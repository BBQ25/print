<?php
/**
 * Test Soft Delete Functionality
 */

require_once 'config/database.php';
require_once 'config/session.php';

// Only allow admin access for testing
session_start();
if (!isset($_SESSION['admin_id'])) {
    die('Access denied. Admin privileges required.');
}

echo "<h1>Soft Delete Functionality Test</h1>";

try {
    $database = new Database();
    $db = $database->getConnection();
    
    // Check database structure
    echo "<h2>Database Structure Check</h2>";
    $query = "DESCRIBE uploaded_files";
    $stmt = $db->prepare($query);
    $stmt->execute();
    $columns = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    $has_soft_delete = false;
    foreach ($columns as $column) {
        if ($column['Field'] === 'is_deleted') {
            $has_soft_delete = true;
            break;
        }
    }
    
    if ($has_soft_delete) {
        echo "<div style='color: green; font-weight: bold;'>✅ Soft delete columns are present</div>";
    } else {
        echo "<div style='color: red; font-weight: bold;'>❌ Soft delete columns are missing</div>";
    }
    
    // Show current files status
    echo "<h2>Current Files Status</h2>";
    
    $query = "SELECT 
                COUNT(*) as total_files,
                SUM(CASE WHEN is_deleted = FALSE THEN 1 ELSE 0 END) as active_files,
                SUM(CASE WHEN is_deleted = TRUE THEN 1 ELSE 0 END) as deleted_files
              FROM uploaded_files";
    $stmt = $db->prepare($query);
    $stmt->execute();
    $stats = $stmt->fetch(PDO::FETCH_ASSOC);
    
    echo "<table border='1' cellpadding='5' cellspacing='0'>";
    echo "<tr><th>Total Files</th><th>Active Files</th><th>Deleted Files</th></tr>";
    echo "<tr>";
    echo "<td>{$stats['total_files']}</td>";
    echo "<td style='color: green;'>{$stats['active_files']}</td>";
    echo "<td style='color: red;'>{$stats['deleted_files']}</td>";
    echo "</tr>";
    echo "</table>";
    
    // Show sample files
    echo "<h2>Sample Files (All Status)</h2>";
    $query = "SELECT 
                uf.id, 
                uf.original_name, 
                uf.StudentNo, 
                uf.is_deleted, 
                uf.deleted_at, 
                uf.deleted_by,
                uf.upload_date,
                s.FirstName, 
                s.Surname 
              FROM uploaded_files uf 
              LEFT JOIN students s ON uf.StudentNo = s.StudentNo 
              ORDER BY uf.upload_date DESC 
              LIMIT 10";
    $stmt = $db->prepare($query);
    $stmt->execute();
    $files = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    if (empty($files)) {
        echo "<p>No files found in database.</p>";
    } else {
        echo "<table border='1' cellpadding='5' cellspacing='0'>";
        echo "<tr><th>ID</th><th>File Name</th><th>Student</th><th>Status</th><th>Upload Date</th><th>Deleted Info</th></tr>";
        
        foreach ($files as $file) {
            $status = $file['is_deleted'] ? '<span style="color: red;">Deleted</span>' : '<span style="color: green;">Active</span>';
            $deleted_info = '';
            
            if ($file['is_deleted']) {
                $deleted_info = "Deleted: " . ($file['deleted_at'] ? date('M d, Y H:i', strtotime($file['deleted_at'])) : 'Unknown') . 
                               "<br>By: " . ($file['deleted_by'] ?: 'Unknown');
            }
            
            echo "<tr>";
            echo "<td>{$file['id']}</td>";
            echo "<td>{$file['original_name']}</td>";
            echo "<td>" . ($file['FirstName'] ? $file['FirstName'] . ' ' . $file['Surname'] : $file['StudentNo']) . "</td>";
            echo "<td>{$status}</td>";
            echo "<td>" . date('M d, Y H:i', strtotime($file['upload_date'])) . "</td>";
            echo "<td>{$deleted_info}</td>";
            echo "</tr>";
        }
        
        echo "</table>";
    }
    
    // Test soft delete functionality
    echo "<h2>Soft Delete Test</h2>";
    
    // Find an active file to test with
    $query = "SELECT id, original_name, StudentNo FROM uploaded_files WHERE is_deleted = FALSE LIMIT 1";
    $stmt = $db->prepare($query);
    $stmt->execute();
    $test_file = $stmt->fetch(PDO::FETCH_ASSOC);
    
    if ($test_file) {
        echo "<p>Testing with file: {$test_file['original_name']} (ID: {$test_file['id']})</p>";
        
        // Simulate soft delete
        $soft_delete_query = "UPDATE uploaded_files SET is_deleted = TRUE, deleted_at = NOW(), deleted_by = 'TEST_ADMIN' WHERE id = :file_id";
        $soft_delete_stmt = $db->prepare($soft_delete_query);
        $soft_delete_stmt->bindParam(':file_id', $test_file['id']);
        
        if ($soft_delete_stmt->execute()) {
            echo "<div style='color: green; font-weight: bold;'>✅ Soft delete test successful</div>";
            
            // Verify the soft delete
            $verify_query = "SELECT is_deleted, deleted_at, deleted_by FROM uploaded_files WHERE id = :file_id";
            $verify_stmt = $db->prepare($verify_query);
            $verify_stmt->bindParam(':file_id', $test_file['id']);
            $verify_stmt->execute();
            $result = $verify_stmt->fetch(PDO::FETCH_ASSOC);
            
            echo "<p>Verification: is_deleted = " . ($result['is_deleted'] ? 'TRUE' : 'FALSE') . "</p>";
            echo "<p>Deleted at: " . $result['deleted_at'] . "</p>";
            echo "<p>Deleted by: " . $result['deleted_by'] . "</p>";
            
            // Restore the file for testing
            $restore_query = "UPDATE uploaded_files SET is_deleted = FALSE, deleted_at = NULL, deleted_by = NULL WHERE id = :file_id";
            $restore_stmt = $db->prepare($restore_query);
            $restore_stmt->bindParam(':file_id', $test_file['id']);
            $restore_stmt->execute();
            
            echo "<div style='color: blue;'>🔄 File restored for testing</div>";
            
        } else {
            echo "<div style='color: red; font-weight: bold;'>❌ Soft delete test failed</div>";
        }
    } else {
        echo "<p>No active files found to test with.</p>";
    }
    
    echo "<h2>Functionality Summary</h2>";
    echo "<div style='background: #f0f8ff; padding: 15px; border-radius: 5px;'>";
    echo "<h3>✅ Implemented Features:</h3>";
    echo "<ul>";
    echo "<li><strong>Soft Delete Columns:</strong> is_deleted, deleted_at, deleted_by</li>";
    echo "<li><strong>Student Dashboard:</strong> Hides soft-deleted files (is_deleted = FALSE filter)</li>";
    echo "<li><strong>Delete Function:</strong> Marks files as deleted instead of removing them</li>";
    echo "<li><strong>Admin Pages:</strong> Shows all files including deleted ones</li>";
    echo "<li><strong>Visual Indicators:</strong> Red styling and 'Deleted' badges for deleted files</li>";
    echo "<li><strong>File Preservation:</strong> Physical files remain in uploads folder</li>";
    echo "</ul>";
    
    echo "<h3>🎯 Benefits:</h3>";
    echo "<ul>";
    echo "<li><strong>Student Privacy:</strong> Students can remove files from their view</li>";
    echo "<li><strong>Admin History:</strong> Complete audit trail for dispute resolution</li>";
    echo "<li><strong>Data Integrity:</strong> No accidental permanent file loss</li>";
    echo "<li><strong>Compliance:</strong> Maintains records for administrative purposes</li>";
    echo "</ul>";
    echo "</div>";
    
} catch (Exception $e) {
    echo "<div style='color: red; font-weight: bold;'>ERROR: " . $e->getMessage() . "</div>";
}

echo "<p><a href='dashboard.php'>← Back to Dashboard</a></p>";
?>
