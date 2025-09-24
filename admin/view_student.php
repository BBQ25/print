<?php
require_once '../config/database.php';
require_once '../config/session.php';

requireAdmin();

if (!isset($_GET['id'])) {
    header('Location: dashboard.php');
    exit();
}

$page_title = 'View Student Files';
$student_id = $_GET['id'];

$database = new Database();
$db = $database->getConnection();

// Get student information (fix collation)
$student_query = "SELECT * FROM students WHERE StudentNo COLLATE utf8mb4_general_ci = :student_no";
$student_stmt = $db->prepare($student_query);
$student_stmt->bindParam(':student_no', $student_id);
$student_stmt->execute();

if ($student_stmt->rowCount() == 0) {
    header('Location: dashboard.php');
    exit();
}

$student = $student_stmt->fetch();

// Get student's files (fix collation)
$files_query = "SELECT * FROM uploaded_files WHERE StudentNo COLLATE utf8mb4_general_ci = :student_no ORDER BY upload_date DESC";
$files_stmt = $db->prepare($files_query);
$files_stmt->bindParam(':student_no', $student_id);
$files_stmt->execute();
$files = $files_stmt->fetchAll();

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
                <div class="w-10 h-10 bg-primary rounded-full flex items-center justify-center">
                    <i class="fas fa-user text-white"></i>
                </div>
                <div>
                    <h1 class="text-xl font-bold text-white">Student Files</h1>
                    <p class="text-sm text-light"><?php echo htmlspecialchars($student['FirstName'] . ' ' . $student['Surname']); ?></p>
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
        <div class="max-w-7xl mx-auto">
            <div class="grid grid-cols-1 lg:grid-cols-4 gap-8">
                <!-- Student Information -->
                <div class="lg:col-span-1">
                    <div class="glass-card p-6 hover-lift">
                        <h3 class="text-xl font-bold text-gray-800 mb-6">Student Information</h3>
                        
                        <div class="space-y-3">
                            <div class="flex justify-between">
                                <span class="text-gray-600">Student No:</span>
                                <span class="font-semibold"><?php echo htmlspecialchars($student['StudentNo']); ?></span>
                            </div>
                            <div class="flex justify-between">
                                <span class="text-gray-600">Name:</span>
                                <span class="font-semibold"><?php echo htmlspecialchars($student['FirstName'] . ' ' . $student['Surname']); ?></span>
                            </div>
                            <?php if ($student['Email']): ?>
                            <div class="flex justify-between">
                                <span class="text-gray-600">Email:</span>
                                <span class="font-semibold"><?php echo htmlspecialchars($student['Email']); ?></span>
                            </div>
                            <?php endif; ?>
                            <?php if ($student['Course']): ?>
                            <div class="flex justify-between">
                                <span class="text-gray-600">Course:</span>
                                <span class="font-semibold"><?php echo htmlspecialchars($student['Course']); ?></span>
                            </div>
                            <?php endif; ?>
                            <div class="flex justify-between">
                                <span class="text-gray-600">Total Files:</span>
                                <span class="font-semibold text-primary-600"><?php echo count($files); ?></span>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Files List -->
                <div class="lg:col-span-3">
                    <div class="glass-card p-6 hover-lift">
                        <h3 class="text-xl font-bold text-gray-800 mb-6">Uploaded Files</h3>
                        
                        <?php if (empty($files)): ?>
                            <div class="text-center py-12">
                                <i class="fas fa-folder-open text-6xl text-gray-300 mb-4"></i>
                                <p class="text-gray-500 text-lg">No files uploaded</p>
                            </div>
                        <?php else: ?>
                            <div class="overflow-x-auto">
                                <table class="w-full">
                                    <thead>
                                        <tr class="border-b border-gray-200">
                                            <th class="text-left py-3 px-4 font-semibold text-gray-700">File Name</th>
                                            <th class="text-left py-3 px-4 font-semibold text-gray-700">Upload Date</th>
                                            <th class="text-left py-3 px-4 font-semibold text-gray-700">File Size</th>
                                            <th class="text-left py-3 px-4 font-semibold text-gray-700">Pages</th>
                                            <th class="text-left py-3 px-4 font-semibold text-gray-700">Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach ($files as $file): ?>
                                            <tr class="border-b border-gray-100 hover:bg-gray-50 transition-colors">
                                                <td class="py-3 px-4">
                                                    <div class="flex items-center space-x-3">
                                                        <i class="fas fa-file text-primary-500"></i>
                                                        <span class="text-gray-800"><?php echo htmlspecialchars($file['original_name']); ?></span>
                                                    </div>
                                                </td>
                                                <td class="py-3 px-4 text-gray-600">
                                                    <?php echo date('M d, Y H:i', strtotime($file['upload_date'])); ?>
                                                </td>
                                                <td class="py-3 px-4 text-gray-600">
                                                    <?php echo isset($file['file_size']) ? number_format($file['file_size'] / 1024, 2) . ' KB' : 'N/A'; ?>
                                                </td>
                                                <td class="py-3 px-4 text-gray-600">
                                                    <?php 
                                                    require_once '../includes/page_detection.php';
                                                    echo getPageCountDisplay($file['page_count'] ?? null, $file['original_name']);
                                                    ?>
                                                </td>
                                                <td class="py-3 px-4">
                                                    <div class="flex space-x-2">
                                                        <a 
                                                            href="download_file.php?id=<?php echo $file['id']; ?>" 
                                                            class="text-primary-600 hover:text-primary-800 transition-colors"
                                                            title="Download"
                                                        >
                                                            <i class="fas fa-download"></i>
                                                        </a>
                                                        <button 
                                                            onclick="deleteFile(<?php echo $file['id']; ?>)" 
                                                            class="text-red-600 hover:text-red-800 transition-colors"
                                                            title="Delete"
                                                        >
                                                            <i class="fas fa-trash"></i>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
function deleteFile(fileId) {
    if (confirm('Are you sure you want to delete this file?')) {
        window.location.href = 'delete_file.php?id=' + fileId + '&return=view_student.php?id=<?php echo $student_id; ?>';
    }
}
</script>

<?php include '../includes/footer.php'; ?>
