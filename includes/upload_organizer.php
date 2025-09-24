<?php
/**
 * Upload Folder Organization Helper
 * Organizes uploads by Course → Year Level → Student
 */

class UploadOrganizer {
    
    /**
     * Get organized folder path for a student
     * Structure: uploads/{Course}/{Year Level}/{Student ID - Surname, First Name, Middle Name}/
     */
    public static function getStudentUploadPath($student_no, $surname, $first_name, $middle_name, $course, $year) {
        // Clean and format course name
        $course_name = self::formatCourseName($course);
        
        // Clean and format year level
        $year_level = self::formatYearLevel($year);
        
        // Clean and format student name
        $student_name = self::formatStudentName($student_no, $surname, $first_name, $middle_name);
        
        // Create the organized path
        $organized_path = "uploads/{$course_name}/{$year_level}/{$student_name}/";
        
        return $organized_path;
    }
    
    /**
     * Format course name for folder structure
     */
    public static function formatCourseName($course) {
        // Use course name directly, but clean it for filesystem compatibility
        $clean_course = trim($course);
        
        // Remove or replace characters that might cause filesystem issues
        $clean_course = preg_replace('/[<>:"|?*]/', '', $clean_course);
        $clean_course = str_replace(['/', '\\'], '-', $clean_course);
        
        return $clean_course;
    }
    
    /**
     * Format year level for folder structure
     */
    public static function formatYearLevel($year) {
        // Map year formats to standardized names
        $year_mapping = [
            '1st Year' => '1st_Year',
            '2nd Year' => '2nd_Year', 
            '3rd Year' => '3rd_Year',
            '4th Year' => '4th_Year',
            '5th Year' => '5th_Year',
            '1st' => '1st_Year',
            '2nd' => '2nd_Year',
            '3rd' => '3rd_Year', 
            '4th' => '4th_Year',
            '5th' => '5th_Year',
            'First Year' => '1st_Year',
            'Second Year' => '2nd_Year',
            'Third Year' => '3rd_Year',
            'Fourth Year' => '4th_Year',
            'Fifth Year' => '5th_Year'
        ];
        
        // Return mapped year or clean the year name
        if (isset($year_mapping[$year])) {
            return $year_mapping[$year];
        }
        
        // Clean and format unknown year formats
        return str_replace([' ', '-'], '_', trim($year));
    }
    
    /**
     * Format student name for folder structure
     * Format: {Student ID} - {Surname}, {First Name} {Middle Name}
     */
    public static function formatStudentName($student_no, $surname, $first_name, $middle_name = '') {
        // Clean student number
        $clean_student_no = trim($student_no);
        
        // Clean surname and first name
        $clean_surname = trim($surname);
        $clean_first_name = trim($first_name);
        
        // Handle middle name (optional)
        $clean_middle_name = trim($middle_name);
        $full_name = $clean_first_name;
        if (!empty($clean_middle_name)) {
            $full_name .= ' ' . $clean_middle_name;
        }
        
        // Format: Student ID - Surname, First Name Middle Name
        $student_folder = "{$clean_student_no} - {$clean_surname}, {$full_name}";
        
        // Remove any characters that might cause filesystem issues
        $student_folder = preg_replace('/[<>:"|?*]/', '', $student_folder);
        $student_folder = str_replace(['/', '\\'], '-', $student_folder);
        
        return trim($student_folder);
    }
    
    /**
     * Create organized directory structure
     */
    public static function createOrganizedDirectory($student_no, $surname, $first_name, $middle_name, $course, $year) {
        $organized_path = self::getStudentUploadPath($student_no, $surname, $first_name, $middle_name, $course, $year);
        
        // Create directory if it doesn't exist
        if (!is_dir($organized_path)) {
            if (!mkdir($organized_path, 0755, true)) {
                throw new Exception("Failed to create directory: {$organized_path}");
            }
        }
        
        return $organized_path;
    }
    
    /**
     * Get student information from database
     */
    public static function getStudentInfo($student_no, $db) {
        $query = "SELECT StudentNo, Surname, FirstName, MiddleName, Course, Year FROM students WHERE StudentNo = :student_no";
        $stmt = $db->prepare($query);
        $stmt->bindParam(':student_no', $student_no);
        $stmt->execute();
        
        $student = $stmt->fetch(PDO::FETCH_ASSOC);
        
        if (!$student) {
            throw new Exception("Student not found: {$student_no}");
        }
        
        return $student;
    }
    
    /**
     * Generate organized file path for upload
     */
    public static function getOrganizedFilePath($student_no, $original_filename, $db) {
        // Get student information
        $student = self::getStudentInfo($student_no, $db);
        
        // Create organized directory
        $organized_path = self::createOrganizedDirectory(
            $student['StudentNo'],
            $student['Surname'], 
            $student['FirstName'],
            $student['MiddleName'],
            $student['Course'],
            $student['Year']
        );
        
        // Generate unique filename
        $file_extension = pathinfo($original_filename, PATHINFO_EXTENSION);
        $unique_filename = uniqid() . '_' . time() . '.' . $file_extension;
        
        // Return full organized file path
        return $organized_path . $unique_filename;
    }
    
    /**
     * Get relative path from uploads root
     */
    public static function getRelativePath($full_path) {
        // Remove 'uploads/' prefix if present
        if (strpos($full_path, 'uploads/') === 0) {
            return $full_path;
        }
        
        // Add 'uploads/' prefix if not present
        return 'uploads/' . ltrim($full_path, '/');
    }
    
    /**
     * Migrate existing file to organized structure
     */
    public static function migrateFile($old_path, $student_no, $db) {
        if (!file_exists($old_path)) {
            throw new Exception("File not found: {$old_path}");
        }
        
        // Get original filename from database
        $query = "SELECT original_name FROM uploaded_files WHERE file_path = :file_path";
        $stmt = $db->prepare($query);
        $stmt->bindParam(':file_path', $old_path);
        $stmt->execute();
        
        $file_info = $stmt->fetch(PDO::FETCH_ASSOC);
        if (!$file_info) {
            throw new Exception("File record not found in database: {$old_path}");
        }
        
        // Generate new organized path
        $new_path = self::getOrganizedFilePath($student_no, $file_info['original_name'], $db);
        
        // Move file to new location
        if (rename($old_path, $new_path)) {
            // Update database record
            $update_query = "UPDATE uploaded_files SET file_path = :new_path WHERE file_path = :old_path";
            $update_stmt = $db->prepare($update_query);
            $update_stmt->bindParam(':new_path', $new_path);
            $update_stmt->bindParam(':old_path', $old_path);
            $update_stmt->execute();
            
            return $new_path;
        } else {
            throw new Exception("Failed to move file from {$old_path} to {$new_path}");
        }
    }
}
?>
