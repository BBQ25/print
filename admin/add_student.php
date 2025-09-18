<?php
require_once '../config/database.php';
require_once '../config/session.php';

requireAdmin();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $students_no = trim($_POST['students_no']);
    $first_name = trim($_POST['first_name']);
    $middle_name = trim($_POST['middle_name']);
    $last_name = trim($_POST['last_name']);
    $email = trim($_POST['email']);
    $course = trim($_POST['course']);
    
    if (empty($students_no) || empty($first_name) || empty($last_name)) {
        $_SESSION['error_message'] = 'Student Number, First Name, and Last Name are required.';
    } else {
        $database = new Database();
        $db = $database->getConnection();
        
        try {
            // Check if student number already exists (fix collation)
            $check_query = "SELECT StudentNo FROM students WHERE StudentNo COLLATE utf8mb4_general_ci = :student_no";
            $check_stmt = $db->prepare($check_query);
            $check_stmt->bindParam(':student_no', $students_no);
            $check_stmt->execute();
            
            if ($check_stmt->rowCount() > 0) {
                $_SESSION['error_message'] = 'Student Number already exists.';
            } else {
                $query = "INSERT INTO students (StudentNo, FirstName, MiddleName, Surname, Email, Course) VALUES (:student_no, :first_name, :middle_name, :surname, :email, :course)";
                $stmt = $db->prepare($query);
                $stmt->bindParam(':student_no', $students_no);
                $stmt->bindParam(':first_name', $first_name);
                $stmt->bindParam(':middle_name', $middle_name);
                $stmt->bindParam(':surname', $last_name);
                $stmt->bindParam(':email', $email);
                $stmt->bindParam(':course', $course);
                
                if ($stmt->execute()) {
                    $_SESSION['success_message'] = 'Student added successfully.';
                } else {
                    $_SESSION['error_message'] = 'Failed to add student.';
                }
            }
        } catch (PDOException $e) {
            $_SESSION['error_message'] = 'Database error: ' . $e->getMessage();
        }
    }
}

header('Location: dashboard.php');
exit();
?>
