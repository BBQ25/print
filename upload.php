<?php
require_once 'config/database.php';
require_once 'config/session.php';

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
        // Create uploads directory if it doesn't exist
        $upload_dir = 'uploads/';
        if (!is_dir($upload_dir)) {
            mkdir($upload_dir, 0755, true);
        }
        
        // Generate unique filename
        $file_extension = pathinfo($file['name'], PATHINFO_EXTENSION);
        $unique_filename = uniqid() . '_' . time() . '.' . $file_extension;
        $file_path = $upload_dir . $unique_filename;
        
        // Move uploaded file
        if (move_uploaded_file($file['tmp_name'], $file_path)) {
            // Save to database
            $database = new Database();
            $db = $database->getConnection();
            
            try {
                // Get file type
                $file_type = $file['type'] ?: 'application/octet-stream';
                
                $query = "INSERT INTO uploaded_files (StudentNo, original_name, file_name, file_path, file_size, file_type, upload_date) VALUES (:student_no, :original_name, :file_name, :file_path, :file_size, :file_type, NOW())";
                $stmt = $db->prepare($query);
                $stmt->bindParam(':student_no', $student_id);
                $stmt->bindParam(':original_name', $file['name']);
                $stmt->bindParam(':file_name', $unique_filename);
                $stmt->bindParam(':file_path', $file_path);
                $stmt->bindParam(':file_size', $file['size']);
                $stmt->bindParam(':file_type', $file_type);
                
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
