<?php
require_once '../config/database.php';
require_once '../config/session.php';

requireAdmin();

if (!isset($_GET['id'])) {
    header('Location: dashboard.php');
    exit();
}

$file_id = $_GET['id'];

$database = new Database();
$db = $database->getConnection();

// Get file information
$query = "SELECT * FROM uploaded_files WHERE FileID = :file_id";
$stmt = $db->prepare($query);
$stmt->bindParam(':file_id', $file_id);
$stmt->execute();

if ($stmt->rowCount() > 0) {
    $file = $stmt->fetch();
    $file_path = '../' . $file['file_path'];
    
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
    $_SESSION['error_message'] = 'File not found.';
}

header('Location: dashboard.php');
exit();
?>
