<?php
require_once 'config/database.php';
require_once 'config/session.php';

requireStudent();

if (!isset($_GET['id'])) {
    header('Location: dashboard.php');
    exit();
}

$file_id = $_GET['id'];
$student_id = $_SESSION['student_id'];

$database = new Database();
$db = $database->getConnection();

// Get file information and verify ownership
$query = "SELECT * FROM uploaded_files WHERE id = :file_id AND StudentNo COLLATE utf8mb4_general_ci = :student_no";
$stmt = $db->prepare($query);
$stmt->bindParam(':file_id', $file_id);
$stmt->bindParam(':student_no', $student_id);
$stmt->execute();

if ($stmt->rowCount() > 0) {
    $file = $stmt->fetch();
    $file_path = $file['file_path'];
    
    if (file_exists($file_path)) {
        // Set headers for file download
        header('Content-Description: File Transfer');
        header('Content-Type: application/octet-stream');
        header('Content-Disposition: attachment; filename="' . basename($file['original_name']) . '"');
        header('Expires: 0');
        header('Cache-Control: must-revalidate');
        header('Pragma: public');
        header('Content-Length: ' . filesize($file_path));
        
        // Output file
        readfile($file_path);
        exit();
    } else {
        $_SESSION['error_message'] = 'File not found on server.';
    }
} else {
    $_SESSION['error_message'] = 'File not found or access denied.';
}

header('Location: dashboard.php');
exit();
?>
