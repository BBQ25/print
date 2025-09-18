<?php
require_once '../config/database.php';
require_once '../config/session.php';

requireAdmin();

if (!isset($_GET['id'])) {
    header('Location: dashboard.php');
    exit();
}

$file_id = $_GET['id'];
$return_url = isset($_GET['return']) ? $_GET['return'] : 'dashboard.php';

$database = new Database();
$db = $database->getConnection();

// Get file information
$query = "SELECT * FROM uploaded_files WHERE FileID = :file_id";
$stmt = $db->prepare($query);
$stmt->bindParam(':file_id', $file_id);
$stmt->execute();

if ($stmt->rowCount() > 0) {
    $file = $stmt->fetch();
    
    // Delete from database
    $delete_query = "DELETE FROM uploaded_files WHERE FileID = :file_id";
    $delete_stmt = $db->prepare($delete_query);
    $delete_stmt->bindParam(':file_id', $file_id);
    
    if ($delete_stmt->execute()) {
        // Delete physical file
        $file_path = '../' . $file['file_path'];
        if (file_exists($file_path)) {
            unlink($file_path);
        }
        $_SESSION['success_message'] = 'File deleted successfully.';
    } else {
        $_SESSION['error_message'] = 'Failed to delete file from database.';
    }
} else {
    $_SESSION['error_message'] = 'File not found.';
}

header('Location: ' . $return_url);
exit();
?>
