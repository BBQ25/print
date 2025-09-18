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
    
    // Delete from database
    $delete_query = "DELETE FROM uploaded_files WHERE id = :file_id";
    $delete_stmt = $db->prepare($delete_query);
    $delete_stmt->bindParam(':file_id', $file_id);
    
    if ($delete_stmt->execute()) {
        // Delete physical file
        if (file_exists($file['file_path'])) {
            unlink($file['file_path']);
        }
        $_SESSION['success_message'] = 'File deleted successfully.';
    } else {
        $_SESSION['error_message'] = 'Failed to delete file from database.';
    }
} else {
    $_SESSION['error_message'] = 'File not found or access denied.';
}

header('Location: dashboard.php');
exit();
?>
