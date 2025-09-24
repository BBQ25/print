<?php
/**
 * Test Upload Organization System
 * Tests the new organized folder structure
 */

require_once 'config/database.php';
require_once 'includes/upload_organizer.php';

// Only allow admin access
session_start();
if (!isset($_SESSION['admin_id'])) {
    die('Access denied. Admin privileges required.');
}

echo "<h1>Upload Organization System Test</h1>";

try {
    $database = new Database();
    $db = $database->getConnection();
    
    // Get sample students
    $query = "SELECT StudentNo, Surname, FirstName, MiddleName, Course, Year FROM students LIMIT 5";
    $stmt = $db->prepare($query);
    $stmt->execute();
    $students = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    echo "<h2>Sample Student Folder Structure</h2>";
    echo "<div style='font-family: monospace; background: #f5f5f5; padding: 15px; border-radius: 5px;'>";
    
    foreach ($students as $student) {
        $organized_path = UploadOrganizer::getStudentUploadPath(
            $student['StudentNo'],
            $student['Surname'],
            $student['FirstName'],
            $student['MiddleName'],
            $student['Course'],
            $student['Year']
        );
        
        echo "<strong>Student:</strong> {$student['FirstName']} {$student['MiddleName']} {$student['Surname']} ({$student['StudentNo']})<br>";
        echo "<strong>Course:</strong> {$student['Course']} - {$student['Year']}<br>";
        echo "<strong>Organized Path:</strong> {$organized_path}<br><br>";
    }
    
    echo "</div>";
    
    // Test folder creation
    echo "<h2>Testing Folder Creation</h2>";
    
    $test_student = $students[0];
    echo "<p>Testing folder creation for: {$test_student['FirstName']} {$test_student['Surname']} ({$test_student['StudentNo']})</p>";
    
    try {
        $organized_path = UploadOrganizer::createOrganizedDirectory(
            $test_student['StudentNo'],
            $test_student['Surname'],
            $test_student['FirstName'],
            $test_student['MiddleName'],
            $test_student['Course'],
            $test_student['Year']
        );
        
        echo "<div style='color: green; font-weight: bold;'>✅ SUCCESS: Folder created at {$organized_path}</div>";
        
        // Test file path generation
        $test_file_path = UploadOrganizer::getOrganizedFilePath(
            $test_student['StudentNo'],
            'test_document.pdf',
            $db
        );
        
        echo "<div style='color: blue;'>📄 Sample file path: {$test_file_path}</div>";
        
    } catch (Exception $e) {
        echo "<div style='color: red; font-weight: bold;'>❌ ERROR: " . $e->getMessage() . "</div>";
    }
    
    // Show department mapping
    echo "<h2>Department Mapping</h2>";
    echo "<table border='1' cellpadding='5' cellspacing='0'>";
    echo "<tr><th>Course Code</th><th>Department Name</th></tr>";
    
    $department_mapping = [
        'BSA' => 'Accountancy',
        'BSInfoTech' => 'Information Technology',
        'BSMB' => 'Management and Business',
        'BSFi' => 'Finance',
        'BSCS' => 'Computer Science',
        'BSE' => 'Education',
        'BSN' => 'Nursing'
    ];
    
    foreach ($department_mapping as $code => $department) {
        echo "<tr><td>{$code}</td><td>{$department}</td></tr>";
    }
    echo "</table>";
    
    // Show year level mapping
    echo "<h2>Year Level Mapping</h2>";
    echo "<table border='1' cellpadding='5' cellspacing='0'>";
    echo "<tr><th>Input Format</th><th>Folder Format</th></tr>";
    
    $year_mapping = [
        '1st Year' => '1st_Year',
        '2nd Year' => '2nd_Year',
        '3rd Year' => '3rd_Year',
        '4th Year' => '4th_Year',
        '1st' => '1st_Year',
        '2nd' => '2nd_Year',
        '3rd' => '3rd_Year',
        '4th' => '4th_Year'
    ];
    
    foreach ($year_mapping as $input => $output) {
        echo "<tr><td>{$input}</td><td>{$output}</td></tr>";
    }
    echo "</table>";
    
    // Show current uploads structure
    echo "<h2>Current Uploads Structure</h2>";
    
    $query = "SELECT COUNT(*) as count FROM uploaded_files WHERE file_path LIKE 'uploads/%' AND file_path NOT LIKE 'uploads/%/%'";
    $stmt = $db->prepare($query);
    $stmt->execute();
    $flat_files = $stmt->fetch()['count'];
    
    $query = "SELECT COUNT(*) as count FROM uploaded_files WHERE file_path LIKE 'uploads/%/%/%'";
    $stmt = $db->prepare($query);
    $stmt->execute();
    $organized_files = $stmt->fetch()['count'];
    
    echo "<p><strong>Files in flat structure:</strong> {$flat_files}</p>";
    echo "<p><strong>Files in organized structure:</strong> {$organized_files}</p>";
    
    if ($flat_files > 0) {
        echo "<div style='background: #fff3cd; padding: 10px; border: 1px solid #ffeaa7; border-radius: 5px;'>";
        echo "<strong>⚠️ Migration Needed:</strong> You have {$flat_files} files in the old flat structure. Run <code>migrate_uploads.php</code> to organize them.";
        echo "</div>";
    } else {
        echo "<div style='background: #d4edda; padding: 10px; border: 1px solid #c3e6cb; border-radius: 5px;'>";
        echo "<strong>✅ All files are organized!</strong> No migration needed.";
        echo "</div>";
    }
    
} catch (Exception $e) {
    echo "<div style='color: red; font-weight: bold;'>FATAL ERROR: " . $e->getMessage() . "</div>";
}
?>
