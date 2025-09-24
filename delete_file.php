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

// Get file information and verify ownership (only non-deleted files)
$query = "SELECT * FROM uploaded_files WHERE id = :file_id AND StudentNo COLLATE utf8mb4_general_ci = :student_no AND is_deleted = FALSE";
$stmt = $db->prepare($query);
$stmt->bindParam(':file_id', $file_id);
$stmt->bindParam(':student_no', $student_id);
$stmt->execute();

if ($stmt->rowCount() > 0) {
    $file = $stmt->fetch();
    
    // Soft delete - mark as deleted but keep the file
    $soft_delete_query = "UPDATE uploaded_files SET is_deleted = TRUE, deleted_at = NOW(), deleted_by = :deleted_by WHERE id = :file_id";
    $soft_delete_stmt = $db->prepare($soft_delete_query);
    $soft_delete_stmt->bindParam(':file_id', $file_id);
    $soft_delete_stmt->bindParam(':deleted_by', $student_id);
    
    if ($soft_delete_stmt->execute()) {
        // File remains in uploads folder for admin history
        $_SESSION['success_message'] = 'File deleted successfully.';
    } else {
        $_SESSION['error_message'] = 'Failed to delete file.';
    }
} else {
    $_SESSION['error_message'] = 'File not found or access denied.';
}

header('Location: dashboard.php');
exit();
?>
