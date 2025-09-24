<?php
/**
 * Upload Migration Script
 * Migrates existing files from flat structure to organized folder structure
 * 
 * Structure: uploads/{Department}/{Year Level}/{Student ID - Surname, First Name, Middle Name}/
 */

require_once 'config/database.php';
require_once 'includes/upload_organizer.php';

// Only allow admin access or command line execution
if (php_sapi_name() !== 'cli') {
    // Check if user is admin
    session_start();
    if (!isset($_SESSION['admin_id'])) {
        die('Access denied. Admin privileges required.');
    }
}

echo "=== Upload Migration Script ===\n";
echo "Migrating files to organized folder structure...\n\n";

try {
    $database = new Database();
    $db = $database->getConnection();
    
    // Get all files that need migration (files in flat uploads/ directory)
    $query = "SELECT id, StudentNo, original_name, file_name, file_path FROM uploaded_files WHERE file_path LIKE 'uploads/%' AND file_path NOT LIKE 'uploads/%/%/%'";
    $stmt = $db->prepare($query);
    $stmt->execute();
    
    $files_to_migrate = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    echo "Found " . count($files_to_migrate) . " files to migrate.\n\n";
    
    if (empty($files_to_migrate)) {
        echo "No files need migration. All files are already organized!\n";
        exit(0);
    }
    
    $migrated_count = 0;
    $error_count = 0;
    $errors = [];
    
    foreach ($files_to_migrate as $file) {
        try {
            echo "Migrating: {$file['original_name']} (Student: {$file['StudentNo']})... ";
            
        // Check if file exists
        if (!file_exists($file['file_path'])) {
            echo "SKIPPED (File not found)\n";
            $errors[] = "File not found: {$file['file_path']}";
            $error_count++;
            
            // Remove the database record for missing files
            $delete_query = "DELETE FROM uploaded_files WHERE id = :file_id";
            $delete_stmt = $db->prepare($delete_query);
            $delete_stmt->bindParam(':file_id', $file['id']);
            $delete_stmt->execute();
            
            continue;
        }
            
            // Get student information
            $student = UploadOrganizer::getStudentInfo($file['StudentNo'], $db);
            
            // Create organized directory
            $organized_path = UploadOrganizer::createOrganizedDirectory(
                $student['StudentNo'],
                $student['Surname'],
                $student['FirstName'],
                $student['MiddleName'],
                $student['Course'],
                $student['Year']
            );
            
            // Generate new filename (keep original unique filename)
            $file_extension = pathinfo($file['original_name'], PATHINFO_EXTENSION);
            $new_filename = $file['file_name']; // Keep the original unique filename
            $new_path = $organized_path . $new_filename;
            
            // Move file to new location
            if (rename($file['file_path'], $new_path)) {
                // Update database record
                $update_query = "UPDATE uploaded_files SET file_path = :new_path WHERE id = :file_id";
                $update_stmt = $db->prepare($update_query);
                $update_stmt->bindParam(':new_path', $new_path);
                $update_stmt->bindParam(':file_id', $file['id']);
                $update_stmt->execute();
                
                echo "SUCCESS\n";
                $migrated_count++;
            } else {
                echo "FAILED (Could not move file)\n";
                $errors[] = "Could not move file: {$file['file_path']} to {$new_path}";
                $error_count++;
            }
            
        } catch (Exception $e) {
            echo "ERROR: " . $e->getMessage() . "\n";
            $errors[] = "Error migrating {$file['original_name']}: " . $e->getMessage();
            $error_count++;
        }
    }
    
    echo "\n=== Migration Summary ===\n";
    echo "Total files processed: " . count($files_to_migrate) . "\n";
    echo "Successfully migrated: {$migrated_count}\n";
    echo "Errors: {$error_count}\n";
    
    if (!empty($errors)) {
        echo "\n=== Errors ===\n";
        foreach ($errors as $error) {
            echo "- {$error}\n";
        }
    }
    
    // Create folder structure summary
    echo "\n=== New Folder Structure Created ===\n";
    $query = "SELECT DISTINCT Course FROM students ORDER BY Course";
    $stmt = $db->prepare($query);
    $stmt->execute();
    $courses = $stmt->fetchAll(PDO::FETCH_COLUMN);
    
    foreach ($courses as $course) {
        $course_name = UploadOrganizer::formatCourseName($course);
        echo "📁 {$course_name}/\n";
        
        // Get year levels for this course
        $query = "SELECT DISTINCT Year FROM students WHERE Course = :course ORDER BY Year";
        $stmt = $db->prepare($query);
        $stmt->bindParam(':course', $course);
        $stmt->execute();
        $years = $stmt->fetchAll(PDO::FETCH_COLUMN);
        
        foreach ($years as $year) {
            $year_level = UploadOrganizer::formatYearLevel($year);
            echo "  📁 {$year_level}/\n";
            echo "    👤 Student folders (Student ID - Surname, First Name Middle Name)\n";
        }
    }
    
    echo "\nMigration completed!\n";
    
} catch (Exception $e) {
    echo "FATAL ERROR: " . $e->getMessage() . "\n";
    exit(1);
}
?>
