<?php
/**
 * Location Tracking Functions for File Uploads
 * Captures and stores device location data during uploads
 */

require_once __DIR__ . '/../config/database.php';
require_once __DIR__ . '/../config/session.php';

// Handle AJAX location updates
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $input = json_decode(file_get_contents('php://input'), true);
    
    if ($input && isset($input['action']) && $input['action'] === 'update_location') {
        header('Content-Type: application/json');
        
        if (!isset($_SESSION['student_id'])) {
            echo json_encode(['success' => false, 'message' => 'Not authenticated']);
            exit;
        }
        
        if (!isset($input['latitude']) || !isset($input['longitude'])) {
            echo json_encode(['success' => false, 'message' => 'Invalid location data']);
            exit;
        }
    
    $latitude = floatval($input['latitude']);
    $longitude = floatval($input['longitude']);
    $device_id = $input['device_id'] ?? null;
    $address = $input['address'] ?? null;
    
    try {
        $database = new Database();
        $db = $database->getConnection();
        
        // Update device location if device_id provided
        if ($device_id) {
            $update_query = "UPDATE student_devices SET 
                location_latitude = :latitude,
                location_longitude = :longitude,
                location_address = :address,
                last_seen = NOW()
                WHERE StudentNo = :student_no AND device_id = :device_id";
            
            $stmt = $db->prepare($update_query);
            $stmt->bindParam(':latitude', $latitude);
            $stmt->bindParam(':longitude', $longitude);
            $stmt->bindParam(':address', $address);
            $stmt->bindParam(':student_no', $_SESSION['student_id']);
            $stmt->bindParam(':device_id', $device_id);
            $stmt->execute();
        }
        
        // Store location in session for immediate use
        $_SESSION['current_location'] = [
            'latitude' => $latitude,
            'longitude' => $longitude,
            'address' => $address,
            'timestamp' => date('Y-m-d H:i:s')
        ];
        
        echo json_encode(['success' => true, 'message' => 'Location updated']);
        
    } catch (PDOException $e) {
        echo json_encode(['success' => false, 'message' => 'Database error: ' . $e->getMessage()]);
    }
    exit;
    }
}

/**
 * Get upload location history for a student
 */
function getUploadLocationHistory($student_id) {
    try {
        $database = new Database();
        $db = $database->getConnection();
        
        $query = "SELECT 
            uf.upload_date,
            uf.original_name,
            uf.file_type,
            uf.mac_address,
            uf.location_latitude,
            uf.location_longitude,
            uf.location_address,
            uf.file_size
        FROM uploaded_files uf
        WHERE uf.StudentNo = :student_no 
        AND (uf.location_latitude IS NOT NULL AND uf.location_longitude IS NOT NULL)
        ORDER BY uf.upload_date DESC
        LIMIT 100";
        
        $stmt = $db->prepare($query);
        $stmt->bindParam(':student_no', $student_id);
        $stmt->execute();
        
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
        
    } catch (PDOException $e) {
        error_log("Location history error: " . $e->getMessage());
        return [];
    }
}

/**
 * Get unique upload locations for map markers
 */
function getUniqueUploadLocations($student_id) {
    try {
        $database = new Database();
        $db = $database->getConnection();
        
        $query = "SELECT 
            uf.location_latitude as latitude,
            uf.location_longitude as longitude,
            uf.location_address as address,
            uf.mac_address,
            COUNT(uf.id) as upload_count,
            MIN(uf.upload_date) as first_upload,
            MAX(uf.upload_date) as last_upload,
            GROUP_CONCAT(DISTINCT uf.original_name ORDER BY uf.upload_date DESC LIMIT 5) as recent_files,
            AVG(uf.file_size) as avg_file_size,
            SUM(uf.file_size) as total_file_size
        FROM uploaded_files uf
        WHERE uf.StudentNo = :student_no 
        AND uf.location_latitude IS NOT NULL 
        AND uf.location_longitude IS NOT NULL
        GROUP BY uf.location_latitude, uf.location_longitude, uf.mac_address
        ORDER BY MAX(uf.upload_date) DESC
        LIMIT 20";
        
        $stmt = $db->prepare($query);
        $stmt->bindParam(':student_no', $student_id);
        $stmt->execute();
        
        $locations = $stmt->fetchAll(PDO::FETCH_ASSOC);
        
        // Add device type detection based on MAC address
        foreach ($locations as &$location) {
            $location['device_name'] = 'Device ' . substr($location['mac_address'], -5);
            $location['device_type'] = 'desktop'; // Default, could be enhanced with MAC vendor detection
            
            // Format file sizes
            $location['avg_file_size_mb'] = round($location['avg_file_size'] / (1024 * 1024), 2);
            $location['total_file_size_mb'] = round($location['total_file_size'] / (1024 * 1024), 2);
        }
        
        return $locations;
        
    } catch (PDOException $e) {
        error_log("Unique locations error: " . $e->getMessage());
        return [];
    }
}

/**
 * Generate device fingerprint for location tracking
 */
function generateDeviceFingerprint() {
    $user_agent = $_SERVER['HTTP_USER_AGENT'] ?? '';
    $accept_language = $_SERVER['HTTP_ACCEPT_LANGUAGE'] ?? '';
    $accept_encoding = $_SERVER['HTTP_ACCEPT_ENCODING'] ?? '';
    
    return md5($user_agent . $accept_language . $accept_encoding);
}

/**
 * Update device location during upload
 */
function updateDeviceLocation($device_id, $latitude, $longitude, $address = null) {
    try {
        $database = new Database();
        $db = $database->getConnection();
        
        $query = "UPDATE student_devices SET 
            location_latitude = :latitude,
            location_longitude = :longitude,
            location_address = :address,
            last_seen = NOW()
            WHERE id = :device_id";
        
        $stmt = $db->prepare($query);
        $stmt->bindParam(':latitude', $latitude);
        $stmt->bindParam(':longitude', $longitude);
        $stmt->bindParam(':address', $address);
        $stmt->bindParam(':device_id', $device_id);
        
        return $stmt->execute();
        
    } catch (PDOException $e) {
        error_log("Device location update error: " . $e->getMessage());
        return false;
    }
}
?>
