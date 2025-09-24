<?php
/**
 * Show Course-Based Upload Folder Structure
 */

require_once 'config/database.php';
require_once 'includes/upload_organizer.php';

echo "=== Course-Based Upload Organization Structure ===\n\n";

try {
    $database = new Database();
    $db = $database->getConnection();
    
    // Get all courses with student counts
    $query = "SELECT Course, COUNT(*) as student_count FROM students GROUP BY Course ORDER BY Course";
    $stmt = $db->prepare($query);
    $stmt->execute();
    $courses = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    echo "Available Courses in Database:\n";
    echo str_repeat("=", 50) . "\n";
    foreach ($courses as $course) {
        echo "📚 {$course['Course']} - {$course['student_count']} students\n";
    }
    
    echo "\n\nFolder Structure:\n";
    echo str_repeat("=", 50) . "\n";
    echo "uploads/\n";
    
    foreach ($courses as $course) {
        $course_name = UploadOrganizer::formatCourseName($course['Course']);
        echo "├── 📁 {$course_name}/ ({$course['student_count']} students)\n";
        
        // Get year levels for this course
        $query = "SELECT DISTINCT Year, COUNT(*) as year_count FROM students WHERE Course = :course GROUP BY Year ORDER BY Year";
        $stmt = $db->prepare($query);
        $stmt->bindParam(':course', $course['Course']);
        $stmt->execute();
        $years = $stmt->fetchAll(PDO::FETCH_ASSOC);
        
        foreach ($years as $index => $year) {
            $year_level = UploadOrganizer::formatYearLevel($year['Year']);
            $prefix = ($index === count($years) - 1) ? '└──' : '├──';
            echo "│   {$prefix} 📁 {$year_level}/ ({$year['year_count']} students)\n";
            
            // Get sample students for this year level
            $query = "SELECT StudentNo, Surname, FirstName, MiddleName FROM students WHERE Course = :course AND Year = :year LIMIT 3";
            $stmt = $db->prepare($query);
            $stmt->bindParam(':course', $course['Course']);
            $stmt->bindParam(':year', $year['Year']);
            $stmt->execute();
            $students = $stmt->fetchAll(PDO::FETCH_ASSOC);
            
            $sub_prefix = ($index === count($years) - 1) ? '    ' : '│   ';
            foreach ($students as $student_index => $student) {
                $student_folder = UploadOrganizer::formatStudentName(
                    $student['StudentNo'],
                    $student['Surname'],
                    $student['FirstName'],
                    $student['MiddleName']
                );
                
                if ($student_index === 0) {
                    echo "{$sub_prefix}└── 👤 {$student_folder}/\n";
                } else {
                    echo "{$sub_prefix}    👤 {$student_folder}/\n";
                }
            }
            
            if (count($students) > 0) {
                echo "{$sub_prefix}    📄 [uploaded files will be stored here]\n";
            }
        }
        echo "\n";
    }
    
    // Show example file paths
    echo "Example File Paths:\n";
    echo str_repeat("=", 50) . "\n";
    
    $sample_students = array_slice($courses, 0, 2);
    foreach ($sample_students as $course) {
        $query = "SELECT StudentNo, Surname, FirstName, MiddleName, Course, Year FROM students WHERE Course = :course LIMIT 1";
        $stmt = $db->prepare($query);
        $stmt->bindParam(':course', $course['Course']);
        $stmt->execute();
        $student = $stmt->fetch(PDO::FETCH_ASSOC);
        
        if ($student) {
            $example_path = UploadOrganizer::getStudentUploadPath(
                $student['StudentNo'],
                $student['Surname'],
                $student['FirstName'],
                $student['MiddleName'],
                $student['Course'],
                $student['Year']
            );
            
            echo "📁 {$student['Course']} student: {$student['FirstName']} {$student['Surname']}\n";
            echo "   Example path: {$example_path}document.pdf\n\n";
        }
    }
    
    echo "✅ Organization system ready!\n";
    echo "📝 New uploads will be automatically organized by Course → Year Level → Student\n";
    
} catch (Exception $e) {
    echo "ERROR: " . $e->getMessage() . "\n";
}

echo "\nStructure demonstration completed!\n";
?>
