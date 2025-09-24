<?php
require_once '../config/database.php';
require_once '../config/session.php';

requireAdmin();

$page_title = 'Students Management';

// Pagination settings
$items_per_page = 10;
$current_page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$offset = ($current_page - 1) * $items_per_page;

// Search and filter
$search = isset($_GET['search']) ? trim($_GET['search']) : '';
$course_filter = isset($_GET['course']) ? trim($_GET['course']) : '';

$database = new Database();
$db = $database->getConnection();

// Build query conditions
$where_conditions = [];
$params = [];

if (!empty($search)) {
    $where_conditions[] = "(FirstName LIKE :search OR Surname LIKE :search OR StudentNo LIKE :search OR Email LIKE :search)";
    $params[':search'] = "%$search%";
}

if (!empty($course_filter)) {
    $where_conditions[] = "Course = :course";
    $params[':course'] = $course_filter;
}

$where_clause = !empty($where_conditions) ? "WHERE " . implode(" AND ", $where_conditions) : "";

// Get total count for pagination
$count_query = "SELECT COUNT(*) as total FROM students $where_clause";

$count_stmt = $db->prepare($count_query);
foreach ($params as $key => $value) {
    $count_stmt->bindValue($key, $value);
}
$count_stmt->execute();
$total_items = $count_stmt->fetch()['total'];
$total_pages = ceil($total_items / $items_per_page);

// Get students with pagination
$students_query = "SELECT s.*, COUNT(uf.id) as file_count 
                   FROM students s 
                   LEFT JOIN uploaded_files uf ON s.StudentNo COLLATE utf8mb4_general_ci = uf.StudentNo COLLATE utf8mb4_general_ci 
                   $where_clause
                   GROUP BY s.StudentNo
                   ORDER BY s.FirstName, s.Surname 
                   LIMIT :limit OFFSET :offset";

$students_stmt = $db->prepare($students_query);
foreach ($params as $key => $value) {
    $students_stmt->bindValue($key, $value);
}
$students_stmt->bindValue(':limit', $items_per_page, PDO::PARAM_INT);
$students_stmt->bindValue(':offset', $offset, PDO::PARAM_INT);
$students_stmt->execute();
$students = $students_stmt->fetchAll();

// Get unique courses for filter dropdown
$courses_query = "SELECT DISTINCT Course FROM students WHERE Course IS NOT NULL AND Course != '' ORDER BY Course";
$courses_stmt = $db->prepare($courses_query);
$courses_stmt->execute();
$courses = $courses_stmt->fetchAll();

include '../includes/header.php';
?>

<div class="min-h-screen bg-gray-50 flex">
    <?php include 'includes/sidebar.php'; ?>
    
    <!-- Main Content -->
    <div class="flex-1 ml-64 main-content-mobile">
        <!-- Top Bar -->
        <nav class="glass-dark backdrop-blur-sm border-b px-6 py-4" style="border-color: var(--border);">
            <div class="flex items-center justify-between">
                <div>
                    <h2 class="text-xl font-bold text-white">Students Management</h2>
                    <p class="text-sm text-light">Manage student information and records</p>
                </div>
                <div class="flex items-center space-x-4">
                    <div class="text-right">
                        <p class="text-white font-semibold text-sm"><?php echo $total_items; ?> Students</p>
                        <p class="text-xs text-light">Total registered</p>
                    </div>
                </div>
            </div>
        </nav>

        <div class="p-6">
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

            <!-- Filters -->
            <div class="glass-card p-6 mb-6">
                <form method="GET" class="flex flex-wrap gap-4 items-end">
                    <div class="flex-1 min-w-64">
                        <label class="block text-sm font-medium text-gray-700 mb-2">Search Students</label>
                        <input 
                            type="text" 
                            name="search" 
                            value="<?php echo htmlspecialchars($search); ?>" 
                            placeholder="Search by name, student number, or email..."
                            class="form-input w-full"
                        >
                    </div>
                    
                    <div class="min-w-48">
                        <label class="block text-sm font-medium text-gray-700 mb-2">Filter by Course</label>
                        <select name="course" class="form-input w-full">
                            <option value="">All Courses</option>
                            <?php foreach ($courses as $course): ?>
                                <option value="<?php echo htmlspecialchars($course['Course']); ?>" 
                                        <?php echo $course_filter === $course['Course'] ? 'selected' : ''; ?>>
                                    <?php echo htmlspecialchars($course['Course']); ?>
                                </option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    
                    <button type="submit" class="btn-primary">
                        <i class="fas fa-search mr-2"></i>Search
                    </button>
                    
                    <a href="students.php" class="bg-gray-300 text-gray-700 py-2 px-4 rounded-lg hover:bg-gray-400 transition-colors">
                        <i class="fas fa-times mr-2"></i>Clear
                    </a>
                </form>
            </div>

            <!-- Add Student Button -->
            <div class="mb-6">
                <button 
                    data-modal-target="addStudentModal" 
                    class="btn-primary"
                >
                    <i class="fas fa-plus mr-2"></i>Add New Student
                </button>
            </div>

            <!-- Students Table -->
            <div class="glass-card p-6">
                <h3 class="text-lg font-bold text-gray-800 mb-4">Student Records</h3>
                
                <div class="table-container">
                    <table class="w-full">
                        <thead class="table-fixed-header">
                            <tr class="border-b border-gray-200">
                                <th class="text-left py-3 px-4 font-semibold text-gray-700">Student No</th>
                                <th class="text-left py-3 px-4 font-semibold text-gray-700">Name</th>
                                <th class="text-left py-3 px-4 font-semibold text-gray-700">Email</th>
                                <th class="text-left py-3 px-4 font-semibold text-gray-700">Course</th>
                                <th class="text-left py-3 px-4 font-semibold text-gray-700">Files</th>
                                <th class="text-left py-3 px-4 font-semibold text-gray-700">Registered</th>
                                <th class="text-left py-3 px-4 font-semibold text-gray-700">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (empty($students)): ?>
                                <tr>
                                    <td colspan="7" class="text-center py-12 text-gray-500">
                                        <i class="fas fa-users text-4xl mb-4 block"></i>
                                        No students found
                                    </td>
                                </tr>
                            <?php else: ?>
                                <?php foreach ($students as $student): ?>
                                    <tr class="border-b border-gray-100 hover:bg-gray-50 transition-colors">
                                        <td class="py-3 px-4">
                                            <p class="font-semibold text-gray-800"><?php echo htmlspecialchars($student['StudentNo']); ?></p>
                                        </td>
                                        <td class="py-3 px-4">
                                            <p class="text-gray-800">
                                                <?php echo htmlspecialchars($student['FirstName'] . ' ' . $student['Surname']); ?>
                                            </p>
                                            <?php if (!empty($student['MiddleName'])): ?>
                                                <p class="text-xs text-gray-500"><?php echo htmlspecialchars($student['MiddleName']); ?></p>
                                            <?php endif; ?>
                                        </td>
                                        <td class="py-3 px-4">
                                            <?php if (!empty($student['Email'])): ?>
                                                <p class="text-gray-600"><?php echo htmlspecialchars($student['Email']); ?></p>
                                            <?php else: ?>
                                                <span class="text-gray-400">-</span>
                                            <?php endif; ?>
                                        </td>
                                        <td class="py-3 px-4">
                                            <?php if (!empty($student['Course'])): ?>
                                                <span class="badge badge-info">
                                                    <?php echo htmlspecialchars($student['Course']); ?>
                                                </span>
                                            <?php else: ?>
                                                <span class="text-gray-400">-</span>
                                            <?php endif; ?>
                                        </td>
                                        <td class="py-3 px-4">
                                            <span class="badge <?php echo $student['file_count'] > 0 ? 'badge-success' : 'badge-gray'; ?>">
                                                <i class="fas fa-file"></i>
                                                <?php echo $student['file_count']; ?>
                                            </span>
                                        </td>
                                        <td class="py-3 px-4 text-gray-600">
                                            <?php 
                                            if (!empty($student['CreatedAt'])) {
                                                echo date('M d, Y', strtotime($student['CreatedAt']));
                                            } else {
                                                echo '<span class="text-gray-400">-</span>';
                                            }
                                            ?>
                                        </td>
                                        <td class="py-3 px-4">
                                            <div class="flex space-x-2">
                                                <button 
                                                    onclick="viewStudent('<?php echo $student['StudentNo']; ?>')" 
                                                    class="text-primary-600 hover:text-primary-800 transition-colors"
                                                    title="View Files"
                                                >
                                                    <i class="fas fa-eye"></i>
                                                </button>
                                                <button 
                                                    onclick="editStudent('<?php echo $student['StudentNo']; ?>')" 
                                                    class="text-info-600 hover:text-blue-800 transition-colors"
                                                    title="Edit"
                                                >
                                                    <i class="fas fa-edit"></i>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            <?php endif; ?>
                        </tbody>
                    </table>
                </div>

                <!-- Pagination -->
                <?php if ($total_pages > 1): ?>
                    <div class="pagination">
                        <?php if ($current_page > 1): ?>
                            <a href="?page=1<?php echo $search ? '&search=' . urlencode($search) : ''; ?><?php echo $course_filter ? '&course=' . urlencode($course_filter) : ''; ?>">
                                <i class="fas fa-angle-double-left"></i>
                            </a>
                            <a href="?page=<?php echo $current_page - 1; ?><?php echo $search ? '&search=' . urlencode($search) : ''; ?><?php echo $course_filter ? '&course=' . urlencode($course_filter) : ''; ?>">
                                <i class="fas fa-angle-left"></i>
                            </a>
                        <?php else: ?>
                            <span class="disabled"><i class="fas fa-angle-double-left"></i></span>
                            <span class="disabled"><i class="fas fa-angle-left"></i></span>
                        <?php endif; ?>

                        <?php
                        $start_page = max(1, $current_page - 2);
                        $end_page = min($total_pages, $current_page + 2);
                        
                        for ($i = $start_page; $i <= $end_page; $i++):
                        ?>
                            <?php if ($i == $current_page): ?>
                                <span class="current"><?php echo $i; ?></span>
                            <?php else: ?>
                                <a href="?page=<?php echo $i; ?><?php echo $search ? '&search=' . urlencode($search) : ''; ?><?php echo $course_filter ? '&course=' . urlencode($course_filter) : ''; ?>">
                                    <?php echo $i; ?>
                                </a>
                            <?php endif; ?>
                        <?php endfor; ?>

                        <?php if ($current_page < $total_pages): ?>
                            <a href="?page=<?php echo $current_page + 1; ?><?php echo $search ? '&search=' . urlencode($search) : ''; ?><?php echo $course_filter ? '&course=' . urlencode($course_filter) : ''; ?>">
                                <i class="fas fa-angle-right"></i>
                            </a>
                            <a href="?page=<?php echo $total_pages; ?><?php echo $search ? '&search=' . urlencode($search) : ''; ?><?php echo $course_filter ? '&course=' . urlencode($course_filter) : ''; ?>">
                                <i class="fas fa-angle-double-right"></i>
                            </a>
                        <?php else: ?>
                            <span class="disabled"><i class="fas fa-angle-double-left"></i></span>
                            <span class="disabled"><i class="fas fa-angle-right"></i></span>
                        <?php endif; ?>
                    </div>
                <?php endif; ?>

                <!-- Results Info -->
                <div class="mt-4 text-sm text-gray-600 text-center">
                    Showing <?php echo $offset + 1; ?> to <?php echo min($offset + $items_per_page, $total_items); ?> of <?php echo $total_items; ?> students
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

// Mobile sidebar functionality
function toggleSidebar() {
    const sidebar = document.getElementById('sidebar');
    const overlay = document.getElementById('sidebarOverlay');
    
    sidebar.classList.toggle('open');
    overlay.classList.toggle('open');
}

function closeSidebar() {
    const sidebar = document.getElementById('sidebar');
    const overlay = document.getElementById('sidebarOverlay');
    
    sidebar.classList.remove('open');
    overlay.classList.remove('open');
}

// Close sidebar when clicking on nav items on mobile
document.addEventListener('DOMContentLoaded', function() {
    const navItems = document.querySelectorAll('.nav-item');
    
    navItems.forEach(item => {
        item.addEventListener('click', function() {
            if (window.innerWidth <= 768) {
                closeSidebar();
            }
        });
    });
    
    // Close sidebar on window resize if desktop
    window.addEventListener('resize', function() {
        if (window.innerWidth > 768) {
            closeSidebar();
        }
    });
});
</script>

<?php include '../includes/footer.php'; ?>
