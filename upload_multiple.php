<?php
require_once 'config/database.php';
require_once 'config/session.php';
require_once 'includes/network_info.php';
require_once 'includes/page_detection.php';
require_once 'includes/location_tracker.php';

requireStudent();

// Increase PHP limits for larger file uploads
ini_set('upload_max_filesize', '50M');
ini_set('post_max_size', '200M');
ini_set('max_execution_time', 300); // 5 minutes
ini_set('memory_limit', '256M');

$response = ['success' => false, 'message' => '', 'uploaded_files' => []];

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_FILES['files'])) {
    $student_id = $_SESSION['student_id'];
    $files = $_FILES['files'];
    
    // Create uploads directory if it doesn't exist
    $upload_dir = 'uploads/';
    if (!is_dir($upload_dir)) {
        mkdir($upload_dir, 0755, true);
    }
    
    $database = new Database();
    $db = $database->getConnection();
    
    // Get or create device record
    $device_info = getDeviceInfo();
    $device_id = getOrCreateDevice($db, $student_id, $device_info);
    
    // Update device location if available in session
    if (isset($_SESSION['current_location']) && $device_id) {
        $location = $_SESSION['current_location'];
        updateDeviceLocation(
            $device_id, 
            $location['latitude'], 
            $location['longitude'], 
            $location['address']
        );
    }
    
    $uploaded_count = 0;
    $total_files = count($files['name']);
    $errors = [];
    
    // Process each file
    for ($i = 0; $i < $total_files; $i++) {
        $file = [
            'name' => $files['name'][$i],
            'type' => $files['type'][$i],
            'tmp_name' => $files['tmp_name'][$i],
            'error' => $files['error'][$i],
            'size' => $files['size'][$i]
        ];
        
        // Validate file
        if ($file['error'] !== UPLOAD_ERR_OK) {
            $errors[] = "Error uploading {$file['name']}: Upload error occurred.";
            continue;
        }
        
        if ($file['size'] > 50 * 1024 * 1024) { // 50MB limit for institutional files
            $errors[] = "Error uploading {$file['name']}: File size exceeds 50MB limit.";
            continue;
        }
        
        // Generate unique filename
        $file_extension = pathinfo($file['name'], PATHINFO_EXTENSION);
        $unique_filename = uniqid() . '_' . time() . '_' . $i . '.' . $file_extension;
        $file_path = $upload_dir . $unique_filename;
        
        // Move uploaded file
        if (move_uploaded_file($file['tmp_name'], $file_path)) {
            try {
                // Get file type
                $file_type = $file['type'] ?: 'application/octet-stream';
                
                // Detect page count
                $page_count = detectPageCount($file_path, $file_type, $file['name']);
                
                // Insert file record with page count
                $query = "INSERT INTO uploaded_files (StudentNo, original_name, file_name, file_path, file_size, file_type, page_count, upload_date, status) VALUES (:student_no, :original_name, :file_name, :file_path, :file_size, :file_type, :page_count, NOW(), 'completed')";
                $stmt = $db->prepare($query);
                $stmt->bindParam(':student_no', $student_id);
                $stmt->bindParam(':original_name', $file['name']);
                $stmt->bindParam(':file_name', $unique_filename);
                $stmt->bindParam(':file_path', $file_path);
                $stmt->bindParam(':file_size', $file['size']);
                $stmt->bindParam(':file_type', $file_type);
                $stmt->bindParam(':page_count', $page_count, PDO::PARAM_INT);
                
                if ($stmt->execute()) {
                    $file_id = $db->lastInsertId();
                    
                    // Link file to device
                    $link_query = "INSERT INTO file_upload_devices (file_id, device_id, upload_method) VALUES (:file_id, :device_id, 'web')";
                    $link_stmt = $db->prepare($link_query);
                    $link_stmt->bindParam(':file_id', $file_id);
                    $link_stmt->bindParam(':device_id', $device_id);
                    $link_stmt->execute();
                    
                    $uploaded_count++;
                    $response['uploaded_files'][] = $file['name'];
                } else {
                    $errors[] = "Database error for {$file['name']}.";
                    unlink($file_path);
                }
            } catch (PDOException $e) {
                $errors[] = "Database error for {$file['name']}: " . $e->getMessage();
                unlink($file_path);
            }
        } else {
            $errors[] = "Failed to move {$file['name']} to upload directory.";
        }
    }
    
    // Set response message
    if ($uploaded_count > 0) {
        $response['success'] = true;
        if ($uploaded_count == $total_files) {
            $response['message'] = "🎉 Successfully uploaded {$uploaded_count} file(s)! All files processed and linked to your device.";
        } else {
            $response['message'] = "✅ Uploaded {$uploaded_count} of {$total_files} files successfully. ⚠️ {" . count($errors) . "} files failed - see details below.";
        }
    } else {
        $response['message'] = "❌ No files were uploaded. Please check the errors below and try again.";
    }
    
    if (!empty($errors)) {
        $response['errors'] = $errors;
        // Store detailed errors for display
        $_SESSION['upload_errors'] = $errors;
    }
    
} else {
    $response['message'] = 'No files were selected for upload.';
}

// Redirect back to dashboard with message
$_SESSION['upload_message'] = $response['message'];
$_SESSION['upload_success'] = $response['success'];
if (isset($response['errors'])) {
    $_SESSION['upload_errors'] = $response['errors'];
}

header('Location: dashboard.php');
exit();

function getDeviceInfo() {
    $network_info = getNetworkInfo();
    $user_agent = $network_info['user_agent'];
    
    // Generate device fingerprint
    $device_fingerprint = md5($user_agent . $_SERVER['HTTP_ACCEPT_LANGUAGE'] . $_SERVER['HTTP_ACCEPT_ENCODING']);
    
    return [
        'device_id' => $device_fingerprint,
        'device_name' => getDeviceName($user_agent),
        'device_type' => getDeviceType($user_agent),
        'operating_system' => getOperatingSystem($user_agent),
        'browser_name' => getBrowserName($user_agent),
        'browser_version' => getBrowserVersion($user_agent),
        'ip_address' => $network_info['ip_address'],
        'mac_address' => getMACAddress($network_info['ip_address']),
        'user_agent' => $user_agent,
        'screen_resolution' => '', // Will be filled by JavaScript
        'timezone' => date_default_timezone_get(),
        'network_type' => '', // Will be filled by JavaScript
        'connection_speed' => '' // Will be filled by JavaScript
    ];
}

function getOrCreateDevice($db, $student_id, $device_info) {
    // Check if device already exists
    $check_query = "SELECT id FROM student_devices WHERE StudentNo = :student_no AND device_id = :device_id";
    $check_stmt = $db->prepare($check_query);
    $check_stmt->bindParam(':student_no', $student_id);
    $check_stmt->bindParam(':device_id', $device_info['device_id']);
    $check_stmt->execute();
    
    if ($check_stmt->rowCount() > 0) {
        // Update existing device
        $device_record = $check_stmt->fetch();
        $device_id = $device_record['id'];
        
        $update_query = "UPDATE student_devices SET 
            last_seen = NOW(),
            ip_address = :ip_address,
            mac_address = :mac_address,
            user_agent = :user_agent
            WHERE id = :device_id";
        $update_stmt = $db->prepare($update_query);
        $update_stmt->bindParam(':ip_address', $device_info['ip_address']);
        $update_stmt->bindParam(':mac_address', $device_info['mac_address']);
        $update_stmt->bindParam(':user_agent', $device_info['user_agent']);
        $update_stmt->bindParam(':device_id', $device_id);
        $update_stmt->execute();
        
    } else {
        // Create new device record
        $insert_query = "INSERT INTO student_devices (
            StudentNo, device_id, device_name, device_type, operating_system,
            browser_name, browser_version, ip_address, mac_address, user_agent,
            timezone, first_seen, last_seen
        ) VALUES (
            :student_no, :device_id, :device_name, :device_type, :operating_system,
            :browser_name, :browser_version, :ip_address, :mac_address, :user_agent,
            :timezone, NOW(), NOW()
        )";
        
        $insert_stmt = $db->prepare($insert_query);
        $insert_stmt->bindParam(':student_no', $student_id);
        $insert_stmt->bindParam(':device_id', $device_info['device_id']);
        $insert_stmt->bindParam(':device_name', $device_info['device_name']);
        $insert_stmt->bindParam(':device_type', $device_info['device_type']);
        $insert_stmt->bindParam(':operating_system', $device_info['operating_system']);
        $insert_stmt->bindParam(':browser_name', $device_info['browser_name']);
        $insert_stmt->bindParam(':browser_version', $device_info['browser_version']);
        $insert_stmt->bindParam(':ip_address', $device_info['ip_address']);
        $insert_stmt->bindParam(':mac_address', $device_info['mac_address']);
        $insert_stmt->bindParam(':user_agent', $device_info['user_agent']);
        $insert_stmt->bindParam(':timezone', $device_info['timezone']);
        $insert_stmt->execute();
        
        $device_id = $db->lastInsertId();
    }
    
    return $device_id;
}

function getDeviceName($user_agent) {
    if (preg_match('/Windows/', $user_agent)) {
        return 'Windows Computer';
    } elseif (preg_match('/Macintosh/', $user_agent)) {
        return 'Mac Computer';
    } elseif (preg_match('/Linux/', $user_agent)) {
        return 'Linux Computer';
    } elseif (preg_match('/Android/', $user_agent)) {
        return 'Android Device';
    } elseif (preg_match('/iPhone/', $user_agent)) {
        return 'iPhone';
    } elseif (preg_match('/iPad/', $user_agent)) {
        return 'iPad';
    }
    return 'Unknown Device';
}

function getDeviceType($user_agent) {
    if (preg_match('/Mobile|Android|iPhone|iPod|BlackBerry|IEMobile|Opera Mini/i', $user_agent)) {
        return 'mobile';
    } elseif (preg_match('/iPad/i', $user_agent)) {
        return 'tablet';
    } else {
        return 'desktop';
    }
}

function getBrowserName($user_agent) {
    if (preg_match('/Chrome/', $user_agent)) {
        return 'Chrome';
    } elseif (preg_match('/Firefox/', $user_agent)) {
        return 'Firefox';
    } elseif (preg_match('/Safari/', $user_agent) && !preg_match('/Chrome/', $user_agent)) {
        return 'Safari';
    } elseif (preg_match('/Edge/', $user_agent)) {
        return 'Edge';
    }
    return 'Unknown';
}

function getBrowserVersion($user_agent) {
    if (preg_match('/Chrome\/([0-9.]+)/', $user_agent, $matches)) {
        return $matches[1];
    } elseif (preg_match('/Firefox\/([0-9.]+)/', $user_agent, $matches)) {
        return $matches[1];
    } elseif (preg_match('/Safari\/([0-9.]+)/', $user_agent, $matches)) {
        return $matches[1];
    } elseif (preg_match('/Edge\/([0-9.]+)/', $user_agent, $matches)) {
        return $matches[1];
    }
    return 'Unknown';
}

function getMACAddress($ip_address) {
    // Development environment MAC
    if ($ip_address === '127.0.0.1' || $ip_address === '::1') {
        return 'F8-54-F6-BB-95-3E'; // Your actual laptop MAC
    }
    
    // For other IPs, generate consistent MAC
    if (strpos($ip_address, '192.168.') === 0 || strpos($ip_address, '10.') === 0 || strpos($ip_address, '172.') === 0) {
        $ip_parts = explode('.', $ip_address);
        return sprintf('00:1B:44:%02X:%02X:%02X', 
            $ip_parts[1] ?? 0, 
            $ip_parts[2] ?? 0, 
            $ip_parts[3] ?? 0
        );
    }
    
    return 'Unknown';
}
?>
