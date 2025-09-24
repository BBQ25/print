<?php
require_once 'config/database.php';
require_once 'config/session.php';
require_once 'includes/upload_organizer.php';

requireStudent();

$response = ['success' => false, 'message' => ''];

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_FILES['file'])) {
    $student_id = $_SESSION['student_id'];
    $file = $_FILES['file'];
    
    // Validate file
    if ($file['error'] !== UPLOAD_ERR_OK) {
        $response['message'] = 'File upload error occurred.';
    } elseif ($file['size'] > 10 * 1024 * 1024) { // 10MB limit
        $response['message'] = 'File size exceeds 10MB limit.';
    } else {
        // Get database connection for organized upload
        $database = new Database();
        $db = $database->getConnection();
        
        // Generate organized file path
        $file_path = UploadOrganizer::getOrganizedFilePath($student_id, $file['name'], $db);
        
        // Move uploaded file
        if (move_uploaded_file($file['tmp_name'], $file_path)) {
            
            try {
                // Get file type
                $file_type = $file['type'] ?: 'application/octet-stream';
                
                // Get MAC address and location data from POST
                $mac_address = $_POST['mac_address'] ?? null;
                $location_latitude = $_POST['location_latitude'] ?? null;
                $location_longitude = $_POST['location_longitude'] ?? null;
                $location_address = $_POST['location_address'] ?? null;
                
                // Convert empty strings to null
                $mac_address = empty($mac_address) ? null : $mac_address;
                $location_latitude = empty($location_latitude) ? null : $location_latitude;
                $location_longitude = empty($location_longitude) ? null : $location_longitude;
                $location_address = empty($location_address) ? null : $location_address;
                
                $query = "INSERT INTO uploaded_files (StudentNo, original_name, file_name, file_path, file_size, file_type, mac_address, location_latitude, location_longitude, location_address, upload_date) VALUES (:student_no, :original_name, :file_name, :file_path, :file_size, :file_type, :mac_address, :location_latitude, :location_longitude, :location_address, NOW())";
                $stmt = $db->prepare($query);
                $stmt->bindParam(':student_no', $student_id);
                $stmt->bindParam(':original_name', $file['name']);
                // Get filename from organized path
                $unique_filename = pathinfo($file_path, PATHINFO_BASENAME);
                $stmt->bindParam(':file_name', $unique_filename);
                $stmt->bindParam(':file_path', $file_path);
                $stmt->bindParam(':file_size', $file['size']);
                $stmt->bindParam(':file_type', $file_type);
                $stmt->bindParam(':mac_address', $mac_address);
                $stmt->bindParam(':location_latitude', $location_latitude);
                $stmt->bindParam(':location_longitude', $location_longitude);
                $stmt->bindParam(':location_address', $location_address);
                
                if ($stmt->execute()) {
                    $response['success'] = true;
                    $response['message'] = 'File uploaded successfully!';
                } else {
                    $response['message'] = 'Database error occurred.';
                    // Clean up uploaded file
                    unlink($file_path);
                }
            } catch (PDOException $e) {
                $response['message'] = 'Database error: ' . $e->getMessage();
                // Clean up uploaded file
                unlink($file_path);
            }
        } else {
            $response['message'] = 'Failed to move uploaded file.';
        }
    }
} else {
    $response['message'] = 'No file was uploaded.';
}

// Redirect back to dashboard with message
$_SESSION['upload_message'] = $response['message'];
$_SESSION['upload_success'] = $response['success'];
header('Location: dashboard.php');
exit();
?>
