<?php
require_once '../config/database.php';
require_once '../config/session.php';

requireAdmin();

if (!isset($_GET['id'])) {
    header('Location: dashboard.php');
    exit();
}

$page_title = 'Edit Student';
$student_id = $_GET['id'];
$error_message = '';
$success_message = '';

$database = new Database();
$db = $database->getConnection();

// Get student information
$student_query = "SELECT * FROM students WHERE StudentNo COLLATE utf8mb4_general_ci = :student_no";
$student_stmt = $db->prepare($student_query);
$student_stmt->bindParam(':student_no', $student_id);
$student_stmt->execute();

if ($student_stmt->rowCount() == 0) {
    header('Location: dashboard.php');
    exit();
}

$student = $student_stmt->fetch();

// Handle form submission
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $first_name = trim($_POST['first_name']);
    $middle_name = trim($_POST['middle_name']);
    $last_name = trim($_POST['last_name']);
    $email = trim($_POST['email']);
    $course = trim($_POST['course']);
    
    if (empty($first_name) || empty($last_name)) {
        $error_message = 'First Name and Last Name are required.';
    } else {
        try {
            $query = "UPDATE students SET FirstName = :first_name, MiddleName = :middle_name, Surname = :surname, Email = :email, Course = :course WHERE StudentNo = :student_no";
            $stmt = $db->prepare($query);
            $stmt->bindParam(':first_name', $first_name);
            $stmt->bindParam(':middle_name', $middle_name);
            $stmt->bindParam(':surname', $last_name);
            $stmt->bindParam(':email', $email);
            $stmt->bindParam(':course', $course);
            $stmt->bindParam(':student_no', $student_id);
            
            if ($stmt->execute()) {
                $success_message = 'Student updated successfully.';
                // Refresh student data
                $student_stmt->execute();
                $student = $student_stmt->fetch();
            } else {
                $error_message = 'Failed to update student.';
            }
        } catch (PDOException $e) {
            $error_message = 'Database error: ' . $e->getMessage();
        }
    }
}

include '../includes/header.php';
?>

<div class="min-h-screen bg-gray-50">
    <!-- Navigation Header -->
    <nav class="glass-dark backdrop-blur-sm border-b px-6 py-4" style="border-color: var(--border);">
        <div class="flex items-center justify-between">
            <div class="flex items-center space-x-4">
                <a href="dashboard.php" class="text-white hover:text-light">
                    <i class="fas fa-arrow-left text-xl"></i>
                </a>
                <div class="w-10 h-10 bg-info rounded-full flex items-center justify-center">
                    <i class="fas fa-user-edit text-white"></i>
                </div>
                <div>
                    <h1 class="text-xl font-bold text-white">Edit Student</h1>
                    <p class="text-sm text-light">Update Student Information</p>
                </div>
            </div>
            
            <div class="flex items-center space-x-4">
                <div class="text-right">
                    <p class="text-white font-semibold"><?php echo htmlspecialchars($_SESSION['admin_name']); ?></p>
                    <p class="text-sm text-light">Administrator</p>
                </div>
                <a href="logout.php" class="text-white hover:text-danger transition-colors" title="Logout">
                    <i class="fas fa-sign-out-alt text-lg"></i>
                </a>
            </div>
        </div>
    </nav>

    <div class="p-6">
        <div class="max-w-2xl mx-auto">
            <!-- Messages -->
            <?php if ($success_message): ?>
                <div class="mb-6 p-4 rounded-lg bg-green-100 border border-green-400 text-green-700">
                    <div class="flex items-center">
                        <i class="fas fa-check-circle mr-2"></i>
                        <?php echo htmlspecialchars($success_message); ?>
                    </div>
                </div>
            <?php endif; ?>

            <?php if ($error_message): ?>
                <div class="mb-6 p-4 rounded-lg bg-red-100 border border-red-400 text-red-700">
                    <div class="flex items-center">
                        <i class="fas fa-exclamation-circle mr-2"></i>
                        <?php echo htmlspecialchars($error_message); ?>
                    </div>
                </div>
            <?php endif; ?>

            <!-- Edit Form -->
            <div class="glass-card p-8 hover-lift">
                <h3 class="text-xl font-bold text-gray-800 mb-6 flex items-center">
                    <i class="fas fa-user-edit mr-3 text-primary"></i>
                    Edit Student Information
                </h3>
                
                <form method="POST" class="space-y-6">
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-2">Student Number</label>
                            <input 
                                type="text" 
                                value="<?php echo htmlspecialchars($student['StudentNo']); ?>" 
                                class="form-input w-full text-gray-800 bg-gray-100" 
                                readonly
                            >
                            <p class="text-xs text-gray-500 mt-1">Student number cannot be changed</p>
                        </div>
                        
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-2">First Name *</label>
                            <input 
                                type="text" 
                                name="first_name" 
                                value="<?php echo htmlspecialchars($student['FirstName']); ?>" 
                                class="form-input w-full text-gray-800" 
                                required
                            >
                        </div>
                        
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-2">Middle Name</label>
                            <input 
                                type="text" 
                                name="middle_name" 
                                value="<?php echo htmlspecialchars($student['MiddleName'] ?? ''); ?>" 
                                class="form-input w-full text-gray-800"
                            >
                        </div>
                        
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-2">Last Name *</label>
                            <input 
                                type="text" 
                                name="last_name" 
                                value="<?php echo htmlspecialchars($student['LastName']); ?>" 
                                class="form-input w-full text-gray-800" 
                                required
                            >
                        </div>
                        
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-2">Email</label>
                            <input 
                                type="email" 
                                name="email" 
                                value="<?php echo htmlspecialchars($student['Email'] ?? ''); ?>" 
                                class="form-input w-full text-gray-800"
                            >
                        </div>
                        
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-2">Course</label>
                            <input 
                                type="text" 
                                name="course" 
                                value="<?php echo htmlspecialchars($student['Course'] ?? ''); ?>" 
                                class="form-input w-full text-gray-800"
                            >
                        </div>
                    </div>
                    
                    <div class="flex space-x-4 pt-6">
                        <a href="dashboard.php" class="flex-1 bg-gray-300 text-gray-700 py-3 px-4 rounded-lg hover:bg-gray-400 transition-colors text-center">
                            <i class="fas fa-arrow-left mr-2"></i>Cancel
                        </a>
                        <button type="submit" class="flex-1 btn-primary">
                            <i class="fas fa-save mr-2"></i>Update Student
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<?php include '../includes/footer.php'; ?>

