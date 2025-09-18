<?php
require_once '../config/database.php';
require_once '../config/session.php';

requireAdmin();

$page_title = 'Admin Dashboard';

// Get statistics
$database = new Database();
$db = $database->getConnection();

// Get total students
$students_query = "SELECT COUNT(*) as total FROM students";
$students_stmt = $db->prepare($students_query);
$students_stmt->execute();
$total_students = $students_stmt->fetch()['total'];

// Get total files
$files_query = "SELECT COUNT(*) as total FROM uploaded_files";
$files_stmt = $db->prepare($files_query);
$files_stmt->execute();
$total_files = $files_stmt->fetch()['total'];

// Get recent uploads (fix collation mismatch)
$recent_query = "SELECT uf.*, s.FirstName, s.Surname 
                 FROM uploaded_files uf 
                 JOIN students s ON uf.StudentNo COLLATE utf8mb4_general_ci = s.StudentNo COLLATE utf8mb4_general_ci 
                 ORDER BY uf.upload_date DESC 
                 LIMIT 10";
$recent_stmt = $db->prepare($recent_query);
$recent_stmt->execute();
$recent_files = $recent_stmt->fetchAll();

// Get all students
$all_students_query = "SELECT * FROM students ORDER BY FirstName, Surname";
$all_students_stmt = $db->prepare($all_students_query);
$all_students_stmt->execute();
$all_students = $all_students_stmt->fetchAll();

include '../includes/header.php';
?>

<div class="min-h-screen bg-gray-50">
    <!-- Navigation Header -->
    <nav class="glass-dark backdrop-blur-sm border-b px-6 py-4" style="border-color: var(--border);">
        <div class="flex items-center justify-between">
            <div class="flex items-center space-x-4">
                <div class="w-10 h-10 bg-danger rounded-full flex items-center justify-center">
                    <i class="fas fa-user-shield text-white"></i>
                </div>
                <div>
                    <h1 class="text-xl font-bold text-white">Admin Panel</h1>
                    <p class="text-sm text-light">DocEase Administration</p>
                </div>
            </div>
            
            <div class="flex items-center space-x-4">
                <div class="text-right">
                    <p class="text-white font-semibold"><?php echo htmlspecialchars($_SESSION['admin_name']); ?></p>
                    <p class="text-sm text-light">Administrator</p>
                </div>
                <div class="w-10 h-10 rounded-full flex items-center justify-center" style="background-color: rgba(241, 242, 246, 0.3);">
                    <i class="fas fa-user-shield text-white"></i>
                </div>
                <a href="logout.php" class="text-white hover:text-danger transition-colors" title="Logout">
                    <i class="fas fa-sign-out-alt text-lg"></i>
                </a>
            </div>
        </div>
    </nav>

    <div class="p-6">
        <div class="max-w-7xl mx-auto">
            <!-- Messages -->
            <?php if (isset($_SESSION['success_message'])): ?>
                <div class="mb-6 p-4 rounded-lg bg-green-100 border border-green-400 text-green-700">
                    <div class="flex items-center">
                        <i class="fas fa-check-circle mr-2"></i>
                        <?php echo htmlspecialchars($_SESSION['success_message']); ?>
                    </div>
                </div>
                <?php unset($_SESSION['success_message']); ?>
            <?php endif; ?>

            <?php if (isset($_SESSION['error_message'])): ?>
                <div class="mb-6 p-4 rounded-lg bg-red-100 border border-red-400 text-red-700">
                    <div class="flex items-center">
                        <i class="fas fa-exclamation-circle mr-2"></i>
                        <?php echo htmlspecialchars($_SESSION['error_message']); ?>
                    </div>
                </div>
                <?php unset($_SESSION['error_message']); ?>
            <?php endif; ?>

            <!-- Statistics Cards -->
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
                <div class="glass-card p-6 hover-lift fade-in">
                    <div class="flex items-center">
                        <div class="w-12 h-12 bg-blue-500 bg-opacity-20 rounded-lg flex items-center justify-center mr-4">
                            <i class="fas fa-users text-blue-600 text-xl"></i>
                        </div>
                        <div>
                            <p class="text-2xl font-bold text-gray-800"><?php echo $total_students; ?></p>
                            <p class="text-gray-600">Total Students</p>
                        </div>
                    </div>
                </div>

                <div class="glass-card p-6 hover-lift fade-in">
                    <div class="flex items-center">
                        <div class="w-12 h-12 bg-green-500 bg-opacity-20 rounded-lg flex items-center justify-center mr-4">
                            <i class="fas fa-file text-green-600 text-xl"></i>
                        </div>
                        <div>
                            <p class="text-2xl font-bold text-gray-800"><?php echo $total_files; ?></p>
                            <p class="text-gray-600">Total Files</p>
                        </div>
                    </div>
                </div>

                <div class="glass-card p-6 hover-lift fade-in">
                    <div class="flex items-center">
                        <div class="w-12 h-12 bg-purple-500 bg-opacity-20 rounded-lg flex items-center justify-center mr-4">
                            <i class="fas fa-chart-line text-purple-600 text-xl"></i>
                        </div>
                        <div>
                            <p class="text-2xl font-bold text-gray-800"><?php echo $total_files > 0 ? number_format($total_files / max($total_students, 1), 1) : '0'; ?></p>
                            <p class="text-gray-600">Avg Files/Student</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="grid grid-cols-1 xl:grid-cols-2 gap-8">
                <!-- Recent Uploads -->
                <div class="glass-card p-6 hover-lift">
                    <h3 class="text-xl font-bold text-gray-800 mb-6 flex items-center">
                        <i class="fas fa-clock mr-3 text-primary"></i>
                        Recent Uploads
                    </h3>
                    
                    <?php if (empty($recent_files)): ?>
                        <div class="text-center py-8">
                            <i class="fas fa-inbox text-4xl text-gray-300 mb-3"></i>
                            <p class="text-gray-500">No recent uploads</p>
                        </div>
                    <?php else: ?>
                        <div class="space-y-3">
                            <?php foreach ($recent_files as $file): ?>
                                <div class="flex items-center justify-between p-3 bg-gray-50 rounded-lg">
                                    <div class="flex items-center space-x-3">
                                        <i class="fas fa-file text-primary-500"></i>
                                        <div>
                                            <p class="font-semibold text-gray-800"><?php echo htmlspecialchars($file['original_name']); ?></p>
                                            <p class="text-sm text-gray-600">
                                                by <?php echo htmlspecialchars($file['FirstName'] . ' ' . $file['Surname']); ?>
                                                (<?php echo htmlspecialchars($file['StudentNo']); ?>)
                                            </p>
                                        </div>
                                    </div>
                                    <div class="text-right">
                                        <p class="text-sm text-gray-500">
                                            <?php echo date('M d, H:i', strtotime($file['upload_date'])); ?>
                                        </p>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    <?php endif; ?>
                </div>

                <!-- Student Management -->
                <div class="glass-card p-6 hover-lift">
                    <h3 class="text-xl font-bold text-gray-800 mb-6 flex items-center">
                        <i class="fas fa-users mr-3 text-primary"></i>
                        Student Management
                    </h3>
                    
                    <div class="mb-4">
                        <button 
                            data-modal-target="addStudentModal" 
                            class="btn-primary"
                        >
                            <i class="fas fa-plus mr-2"></i>Add New Student
                        </button>
                    </div>
                    
                    <div class="max-h-96 overflow-y-auto">
                        <table class="w-full">
                            <thead class="sticky top-0 bg-white">
                                <tr class="border-b border-gray-200">
                                    <th class="text-left py-2 px-3 font-semibold text-gray-700">Student No</th>
                                    <th class="text-left py-2 px-3 font-semibold text-gray-700">Name</th>
                                    <th class="text-left py-2 px-3 font-semibold text-gray-700">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($all_students as $student): ?>
                                    <tr class="border-b border-gray-100 hover:bg-gray-50 transition-colors">
                                        <td class="py-2 px-3 text-sm text-gray-800"><?php echo htmlspecialchars($student['StudentNo']); ?></td>
                                        <td class="py-2 px-3 text-sm text-gray-800">
                                            <?php echo htmlspecialchars($student['FirstName'] . ' ' . $student['Surname']); ?>
                                        </td>
                                        <td class="py-2 px-3">
                                            <div class="flex space-x-2">
                                                <button 
                                                    onclick="viewStudent('<?php echo $student['StudentNo']; ?>')" 
                                                    class="text-primary hover:text-primary-800 text-sm"
                                                    title="View Files"
                                                >
                                                    <i class="fas fa-eye"></i>
                                                </button>
                                                <button 
                                                    onclick="editStudent('<?php echo $student['StudentNo']; ?>')" 
                                                    class="text-info hover:text-blue-800 text-sm"
                                                    title="Edit"
                                                >
                                                    <i class="fas fa-edit"></i>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Add Student Modal -->
<div id="addStudentModal" class="modal fixed inset-0 bg-black bg-opacity-50 items-center justify-center z-50 hidden">
    <div class="glass-card p-6 w-full max-w-md mx-4">
        <div class="flex justify-between items-center mb-6">
            <h3 class="text-xl font-bold text-gray-800">Add New Student</h3>
            <button data-modal-close class="text-gray-500 hover:text-gray-700">
                <i class="fas fa-times text-xl"></i>
            </button>
        </div>
        
        <form action="add_student.php" method="POST" class="space-y-4">
            <div>
                <label class="block text-sm font-medium text-gray-700 mb-1">Student Number</label>
                <input type="text" name="students_no" class="form-input w-full text-gray-800" required>
            </div>
            
            <div>
                <label class="block text-sm font-medium text-gray-700 mb-1">First Name</label>
                <input type="text" name="first_name" class="form-input w-full text-gray-800" required>
            </div>
            
            <div>
                <label class="block text-sm font-medium text-gray-700 mb-1">Middle Name</label>
                <input type="text" name="middle_name" class="form-input w-full text-gray-800">
            </div>
            
            <div>
                <label class="block text-sm font-medium text-gray-700 mb-1">Last Name</label>
                <input type="text" name="last_name" class="form-input w-full text-gray-800" required>
            </div>
            
            <div>
                <label class="block text-sm font-medium text-gray-700 mb-1">Email</label>
                <input type="email" name="email" class="form-input w-full text-gray-800">
            </div>
            
            <div>
                <label class="block text-sm font-medium text-gray-700 mb-1">Course</label>
                <input type="text" name="course" class="form-input w-full text-gray-800">
            </div>
            
            <div class="flex space-x-4 pt-4">
                <button type="button" data-modal-close class="flex-1 bg-gray-300 text-gray-700 py-2 px-4 rounded-lg hover:bg-gray-400 transition-colors">
                    Cancel
                </button>
                <button type="submit" class="flex-1 btn-primary">
                    <i class="fas fa-plus mr-2"></i>Add Student
                </button>
            </div>
        </form>
    </div>
</div>

<script>
function viewStudent(studentNo) {
    window.location.href = 'view_student.php?id=' + studentNo;
}

function editStudent(studentNo) {
    window.location.href = 'edit_student.php?id=' + studentNo;
}
</script>

<?php include '../includes/footer.php'; ?>
