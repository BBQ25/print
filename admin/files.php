<?php
require_once '../config/database.php';
require_once '../config/session.php';

requireAdmin();

$page_title = 'Files Management';

// Pagination settings
$items_per_page = 10;
$current_page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$offset = ($current_page - 1) * $items_per_page;

// Search and filter
$search = isset($_GET['search']) ? trim($_GET['search']) : '';
$student_filter = isset($_GET['student']) ? trim($_GET['student']) : '';

$database = new Database();
$db = $database->getConnection();

// Build query conditions
$where_conditions = [];
$params = [];

if (!empty($search)) {
    $where_conditions[] = "(uf.original_name LIKE :search OR s.FirstName LIKE :search OR s.Surname LIKE :search OR uf.StudentNo LIKE :search)";
    $params[':search'] = "%$search%";
}

if (!empty($student_filter)) {
    $where_conditions[] = "uf.StudentNo = :student";
    $params[':student'] = $student_filter;
}

$where_clause = !empty($where_conditions) ? "WHERE " . implode(" AND ", $where_conditions) : "";

// Get total count for pagination
$count_query = "SELECT COUNT(*) as total 
                FROM uploaded_files uf 
                LEFT JOIN students s ON uf.StudentNo COLLATE utf8mb4_general_ci = s.StudentNo COLLATE utf8mb4_general_ci 
                $where_clause";

$count_stmt = $db->prepare($count_query);
foreach ($params as $key => $value) {
    $count_stmt->bindValue($key, $value);
}
$count_stmt->execute();
$total_items = $count_stmt->fetch()['total'];
$total_pages = ceil($total_items / $items_per_page);

// Get files with pagination
$files_query = "SELECT uf.*, s.FirstName, s.Surname, s.Course 
                FROM uploaded_files uf 
                LEFT JOIN students s ON uf.StudentNo COLLATE utf8mb4_general_ci = s.StudentNo COLLATE utf8mb4_general_ci 
                $where_clause
                ORDER BY uf.upload_date DESC 
                LIMIT :limit OFFSET :offset";

$files_stmt = $db->prepare($files_query);
foreach ($params as $key => $value) {
    $files_stmt->bindValue($key, $value);
}
$files_stmt->bindValue(':limit', $items_per_page, PDO::PARAM_INT);
$files_stmt->bindValue(':offset', $offset, PDO::PARAM_INT);
$files_stmt->execute();
$files = $files_stmt->fetchAll();

// Get all students for filter dropdown
$students_query = "SELECT StudentNo, FirstName, Surname FROM students ORDER BY FirstName, Surname";
$students_stmt = $db->prepare($students_query);
$students_stmt->execute();
$all_students = $students_stmt->fetchAll();

// Function to truncate file name while preserving extension
function truncateFileName($filename, $maxLength = 30) {
    if (strlen($filename) <= $maxLength) {
        return $filename;
    }
    
    $extension = pathinfo($filename, PATHINFO_EXTENSION);
    $nameWithoutExt = pathinfo($filename, PATHINFO_FILENAME);
    
    if ($extension) {
        // Reserve space for extension + dot + ellipsis
        $availableLength = $maxLength - strlen($extension) - 4; // 4 for "... ."
        if ($availableLength > 0) {
            $truncatedName = substr($nameWithoutExt, 0, $availableLength) . '...';
            return $truncatedName . '.' . $extension;
        } else {
            // If extension is too long, just truncate everything
            return substr($filename, 0, $maxLength - 3) . '...';
        }
    } else {
        // No extension, just truncate
        return substr($filename, 0, $maxLength - 3) . '...';
    }
}

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
                    <h2 class="text-xl font-bold text-white">Files Management</h2>
                    <p class="text-sm text-light">Manage uploaded files and documents</p>
                </div>
                <div class="flex items-center space-x-4">
                    <div class="text-right">
                        <p class="text-white font-semibold text-sm"><?php echo $total_items; ?> Files</p>
                        <p class="text-xs text-light">Total uploaded</p>
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
                <form id="searchForm" method="GET" class="flex flex-wrap gap-4 items-end">
                    <div class="flex-1 min-w-64">
                        <label class="block text-sm font-medium text-gray-700 mb-2">Search Files</label>
                        <input 
                            type="text" 
                            id="searchInput"
                            name="search" 
                            value="<?php echo htmlspecialchars($search); ?>" 
                            placeholder="Search by file name, student name, or student ID..."
                            class="form-input w-full"
                            autocomplete="off"
                        >
                    </div>
                    
                    <div class="min-w-48">
                        <label class="block text-sm font-medium text-gray-700 mb-2">Filter by Student</label>
                        <select id="studentFilter" name="student" class="form-input w-full">
                            <option value="">All Students</option>
                            <?php foreach ($all_students as $student): ?>
                                <option value="<?php echo htmlspecialchars($student['StudentNo']); ?>" 
                                        <?php echo $student_filter === $student['StudentNo'] ? 'selected' : ''; ?>>
                                    <?php echo htmlspecialchars($student['FirstName'] . ' ' . $student['Surname'] . ' (' . $student['StudentNo'] . ')'); ?>
                                </option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    
                    <button type="button" id="searchBtn" class="btn-primary">
                        <i class="fas fa-search mr-2"></i>Search
                    </button>
                    
                    <button type="button" id="clearBtn" class="bg-gray-300 text-gray-700 py-2 px-4 rounded-lg hover:bg-gray-400 transition-colors">
                        <i class="fas fa-times mr-2"></i>Clear
                    </button>
                    
                </form>
            </div>

            <!-- Files Table -->
            <div class="glass-card p-6">
                <h3 class="text-lg font-bold text-gray-800 mb-4">Uploaded Files</h3>
                
                <div id="filesTableContainer">
                <div class="table-container">
                    <table class="w-full">
                        <thead class="table-fixed-header">
                            <tr class="border-b border-gray-200">
                                <th class="text-left py-3 px-4 font-semibold text-gray-700">File Name</th>
                                <th class="text-left py-3 px-4 font-semibold text-gray-700">Student</th>
                                <th class="text-left py-3 px-4 font-semibold text-gray-700">Upload Date</th>
                                <th class="text-left py-3 px-4 font-semibold text-gray-700">File Size</th>
                                <th class="text-left py-3 px-4 font-semibold text-gray-700">Pages</th>
                                <th class="text-left py-3 px-4 font-semibold text-gray-700">Downloads</th>
                                <th class="text-left py-3 px-4 font-semibold text-gray-700">Actions</th>
                            </tr>
                        </thead>
                            <tbody id="filesTableBody">
                            <?php if (empty($files)): ?>
                                <tr>
                                    <td colspan="7" class="text-center py-12 text-gray-500">
                                        <i class="fas fa-inbox text-4xl mb-4 block"></i>
                                        No files found
                                    </td>
                                </tr>
                            <?php else: ?>
                                <?php foreach ($files as $file): ?>
                                    <tr class="border-b border-gray-100 hover:bg-gray-50 transition-colors <?php echo $file['is_deleted'] ? 'bg-red-50 opacity-75' : ''; ?>">
                                        <td class="py-3 px-4">
                                            <div class="flex items-center space-x-3">
                                                <?php if ($file['is_deleted']): ?>
                                                    <i class="fas fa-file text-red-400"></i>
                                                <?php else: ?>
                                                    <i class="fas fa-file text-primary-500"></i>
                                                <?php endif; ?>
                                                <div>
                                                    <div class="flex items-center space-x-2">
                                                        <p class="font-semibold <?php echo $file['is_deleted'] ? 'text-red-600 line-through' : 'text-gray-800'; ?>" title="<?php echo htmlspecialchars($file['original_name']); ?>">
                                                            <?php echo htmlspecialchars(truncateFileName($file['original_name'])); ?>
                                                        </p>
                                                        <?php if ($file['is_deleted']): ?>
                                                            <span class="inline-flex items-center px-2 py-1 rounded-full text-xs font-medium bg-red-100 text-red-800">
                                                                <i class="fas fa-trash mr-1"></i>Deleted
                                                            </span>
                                                        <?php endif; ?>
                                                    </div>
                                                    <p class="text-xs text-gray-500"><?php echo htmlspecialchars($file['file_type'] ?? 'Unknown'); ?></p>
                                                    <?php if ($file['is_deleted'] && $file['deleted_at']): ?>
                                                        <p class="text-xs text-red-500">
                                                            <i class="fas fa-clock mr-1"></i>Deleted on <?php echo date('M d, Y H:i', strtotime($file['deleted_at'])); ?>
                                                        </p>
                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="py-3 px-4">
                                            <?php if ($file['FirstName']): ?>
                                                <p class="text-gray-800"><?php echo htmlspecialchars($file['FirstName'] . ' ' . $file['Surname']); ?></p>
                                                <p class="text-xs text-gray-500"><?php echo htmlspecialchars($file['StudentNo']); ?></p>
                                            <?php else: ?>
                                                <p class="text-gray-500"><?php echo htmlspecialchars($file['StudentNo']); ?></p>
                                            <?php endif; ?>
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
                                        <td class="py-3 px-4 text-gray-600">
                                            <?php echo $file['download_count'] ?? 0; ?>
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
                            <?php endif; ?>
                        </tbody>
                    </table>
                    </div>
                </div>

                <!-- Pagination -->
                <div id="paginationContainer">
                <?php if ($total_pages > 1): ?>
                    <div class="pagination">
                        <?php if ($current_page > 1): ?>
                            <a href="?page=1<?php echo $search ? '&search=' . urlencode($search) : ''; ?><?php echo $student_filter ? '&student=' . urlencode($student_filter) : ''; ?>">
                                <i class="fas fa-angle-double-left"></i>
                            </a>
                            <a href="?page=<?php echo $current_page - 1; ?><?php echo $search ? '&search=' . urlencode($search) : ''; ?><?php echo $student_filter ? '&student=' . urlencode($student_filter) : ''; ?>">
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
                                <a href="?page=<?php echo $i; ?><?php echo $search ? '&search=' . urlencode($search) : ''; ?><?php echo $student_filter ? '&student=' . urlencode($student_filter) : ''; ?>">
                                    <?php echo $i; ?>
                                </a>
                            <?php endif; ?>
                        <?php endfor; ?>

                        <?php if ($current_page < $total_pages): ?>
                            <a href="?page=<?php echo $current_page + 1; ?><?php echo $search ? '&search=' . urlencode($search) : ''; ?><?php echo $student_filter ? '&student=' . urlencode($student_filter) : ''; ?>">
                                <i class="fas fa-angle-right"></i>
                            </a>
                            <a href="?page=<?php echo $total_pages; ?><?php echo $search ? '&search=' . urlencode($search) : ''; ?><?php echo $student_filter ? '&student=' . urlencode($student_filter) : ''; ?>">
                                <i class="fas fa-angle-double-right"></i>
                            </a>
                        <?php else: ?>
                            <span class="disabled"><i class="fas fa-angle-right"></i></span>
                            <span class="disabled"><i class="fas fa-angle-double-right"></i></span>
                        <?php endif; ?>
                    </div>
                <?php endif; ?>

                <!-- Results Info -->
                <div class="mt-4 text-sm text-gray-600 text-center">
                    Showing <?php echo $offset + 1; ?> to <?php echo min($offset + $items_per_page, $total_items); ?> of <?php echo $total_items; ?> files
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
// Simple live search with keypress
let searchTimeout = null;

document.addEventListener('DOMContentLoaded', function() {
    console.log('Admin files page loaded, initializing search...');
    
    const searchInput = document.getElementById('searchInput');
    const studentFilter = document.getElementById('studentFilter');
    const searchBtn = document.getElementById('searchBtn');
    const clearBtn = document.getElementById('clearBtn');
    
    // Check if elements exist
    console.log('Elements found:', {
        searchInput: !!searchInput,
        studentFilter: !!studentFilter,
        searchBtn: !!searchBtn,
        clearBtn: !!clearBtn
    });
    
    // Live search on keypress
    if (searchInput) {
        console.log('Setting up keyup event listener for search input');
        searchInput.addEventListener('keyup', function() {
            console.log('Search input keyup event triggered, value:', this.value);
            // Clear previous timeout
            if (searchTimeout) {
                clearTimeout(searchTimeout);
            }
            
            // Set new timeout for debounced search
            searchTimeout = setTimeout(function() {
                console.log('Executing delayed search...');
                performLiveSearch();
            }, 300);
        });
    } else {
        console.error('Search input element not found!');
    }
    
    // Search button click
    if (searchBtn) {
        searchBtn.addEventListener('click', function(e) {
            e.preventDefault();
            if (searchTimeout) {
                clearTimeout(searchTimeout);
            }
            performLiveSearch();
        });
    }
    
    // Clear button functionality
    if (clearBtn) {
        clearBtn.addEventListener('click', function(e) {
            e.preventDefault();
            if (searchInput) searchInput.value = '';
            if (studentFilter) studentFilter.value = '';
            if (searchTimeout) {
                clearTimeout(searchTimeout);
            }
            performLiveSearch();
        });
    }
    
    // Auto-search on student filter change
    if (studentFilter) {
        studentFilter.addEventListener('change', function() {
            if (searchTimeout) {
                clearTimeout(searchTimeout);
            }
            performLiveSearch();
        });
    }
});

// Perform live search using dynamic.php
function performLiveSearch() {
    console.log('performLiveSearch function called');
    
    const searchInput = document.getElementById('searchInput');
    const studentFilter = document.getElementById('studentFilter');
    const filesTableBody = document.getElementById('filesTableBody');
    
    if (!searchInput || !filesTableBody) {
        console.error('Required elements not found:', {
            searchInput: !!searchInput,
            filesTableBody: !!filesTableBody
        });
        return;
    }
    
    const searchTerm = searchInput.value.trim();
    const studentValue = studentFilter ? studentFilter.value : '';
    
    console.log('Search parameters:', {
        searchTerm: searchTerm,
        studentValue: studentValue
    });
    
    // Build URL parameters
    const params = new URLSearchParams({
        action: 'search_files',
        search: searchTerm,
        student: studentValue,
        page: 1,
        per_page: 10
    });
    
    // Show loading state
    filesTableBody.innerHTML = `
        <tr>
            <td colspan="7" class="text-center py-12">
                <i class="fas fa-spinner fa-spin text-2xl text-blue-500"></i>
                <p class="text-gray-500 mt-2">Searching...</p>
            </td>
        </tr>
    `;
    
    // Make AJAX request
    console.log('Making request to:', `../dynamic.php?${params}`);
    fetch(`../dynamic.php?${params}`)
        .then(response => {
            console.log('Response status:', response.status);
            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }
            return response.json();
        })
        .then(data => {
            console.log('Search response:', data);
            if (data.success) {
                updateTableWithResults(data.data.files);
            } else {
                showSearchError(data.error || 'Search failed');
            }
        })
        .catch(error => {
            console.error('Search error:', error);
            showSearchError('Network error occurred: ' + error.message);
        });
}

// Update table with search results
function updateTableWithResults(files) {
    const filesTableBody = document.getElementById('filesTableBody');
    
    if (!files || files.length === 0) {
        filesTableBody.innerHTML = `
            <tr>
                <td colspan="7" class="text-center py-12 text-gray-500">
                    <i class="fas fa-inbox text-4xl mb-4 block"></i>
                    No files found
                </td>
            </tr>
        `;
        return;
    }
    
    let html = '';
    files.forEach(file => {
        const fileSize = file.file_size ? (file.file_size / 1024).toFixed(2) + ' KB' : 'N/A';
        const uploadDate = new Date(file.upload_date).toLocaleDateString('en-US', {
            month: 'short',
            day: 'numeric',
            year: 'numeric',
            hour: '2-digit',
            minute: '2-digit'
        });
        
        const isDeleted = file.is_deleted == 1 || file.is_deleted === true;
        const deletedClass = isDeleted ? 'bg-red-50 opacity-75' : '';
        const fileIconClass = isDeleted ? 'text-red-400' : 'text-primary-500';
        const fileNameClass = isDeleted ? 'text-red-600 line-through' : 'text-gray-800';
        
        html += `
            <tr class="border-b border-gray-100 hover:bg-gray-50 transition-colors ${deletedClass}">
                <td class="py-3 px-4">
                    <div class="flex items-center space-x-3">
                        <i class="fas fa-file ${fileIconClass}"></i>
                        <div>
                            <div class="flex items-center space-x-2">
                                <p class="font-semibold ${fileNameClass}" title="${escapeHtml(file.original_name)}">${truncateFileName(escapeHtml(file.original_name), 30)}</p>
                                ${isDeleted ? '<span class="inline-flex items-center px-2 py-1 rounded-full text-xs font-medium bg-red-100 text-red-800"><i class="fas fa-trash mr-1"></i>Deleted</span>' : ''}
                            </div>
                            <p class="text-xs text-gray-500">${escapeHtml(file.file_type || 'Unknown')}</p>
                            ${isDeleted && file.deleted_at ? `<p class="text-xs text-red-500"><i class="fas fa-clock mr-1"></i>Deleted on ${new Date(file.deleted_at).toLocaleDateString()}</p>` : ''}
                        </div>
                    </div>
                </td>
                <td class="py-3 px-4">
                    ${file.FirstName ? 
                        `<p class="text-gray-800">${escapeHtml(file.FirstName + ' ' + file.Surname)}</p>
                         <p class="text-xs text-gray-500">${escapeHtml(file.StudentNo)}</p>` :
                        `<p class="text-gray-500">${escapeHtml(file.StudentNo)}</p>`
                    }
                </td>
                <td class="py-3 px-4 text-gray-600">${uploadDate}</td>
                <td class="py-3 px-4 text-gray-600">${fileSize}</td>
                <td class="py-3 px-4 text-gray-600">${getPageCountDisplay(file.page_count, file.original_name)}</td>
                <td class="py-3 px-4 text-gray-600">${file.download_count || 0}</td>
                <td class="py-3 px-4">
                    <div class="flex space-x-2">
                        <a href="download_file.php?id=${file.id}" 
                           class="text-primary-600 hover:text-primary-800 transition-colors"
                           title="Download">
                            <i class="fas fa-download"></i>
                        </a>
                        <button onclick="deleteFile(${file.id})" 
                                class="text-red-600 hover:text-red-800 transition-colors"
                                title="Delete">
                            <i class="fas fa-trash"></i>
                        </button>
                    </div>
                </td>
            </tr>
        `;
    });
    
    filesTableBody.innerHTML = html;
}

// Show search error
function showSearchError(message) {
    const filesTableBody = document.getElementById('filesTableBody');
    filesTableBody.innerHTML = `
        <tr>
            <td colspan="7" class="text-center py-12 text-red-500">
                <i class="fas fa-exclamation-triangle text-4xl mb-4 block"></i>
                <p>${escapeHtml(message)}</p>
            </td>
        </tr>
    `;
}

// Utility functions
function escapeHtml(text) {
    const div = document.createElement('div');
    div.textContent = text;
    return div.innerHTML;
}

function truncateFileName(fileName, maxLength = 30) {
    if (fileName.length <= maxLength) {
        return fileName;
    }
    
    const lastDotIndex = fileName.lastIndexOf('.');
    if (lastDotIndex === -1) {
        return fileName.substring(0, maxLength - 3) + '...';
    }
    
    const extension = fileName.substring(lastDotIndex);
    const nameWithoutExt = fileName.substring(0, lastDotIndex);
    const availableLength = maxLength - extension.length - 3;
    
    if (availableLength > 0) {
        const truncatedName = nameWithoutExt.substring(0, availableLength) + '...';
        return truncatedName + extension;
    } else {
        return fileName.substring(0, maxLength - 3) + '...';
    }
}

function getPageCountDisplay(pageCount, fileName) {
    if (pageCount && pageCount > 0) {
        return pageCount + ' pages';
    }
    return '-';
}

// Delete function
function deleteFile(fileId) {
    if (confirm('Are you sure you want to delete this file? This action cannot be undone.')) {
        window.location.href = 'delete_file.php?id=' + fileId + '&return=files.php';
    }
}
</script>

<?php include '../includes/footer.php'; ?>
