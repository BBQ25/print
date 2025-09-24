<?php
/**
 * Dynamic.php - Dynamic content handler for DocEase File Management System
 * 
 * This file handles dynamic content requests, AJAX calls, and real-time updates
 * for the file management system.
 */

// Include necessary files
require_once 'config/database.php';
require_once 'config/session.php';

// Check if this is an AJAX request
$is_ajax = isset($_GET['action']) || isset($_POST['action']);

if ($is_ajax) {
    // Handle AJAX requests
    header('Content-Type: application/json');
    
    // Check if user is logged in for AJAX requests
    if (!isset($_SESSION['student_id']) && !isset($_SESSION['admin_id'])) {
        http_response_code(401);
        echo json_encode([
            'success' => false,
            'error' => 'Unauthorized access'
        ]);
        exit;
    }
    
    // Get request method and action
    $method = $_SERVER['REQUEST_METHOD'];
    $action = isset($_GET['action']) ? $_GET['action'] : (isset($_POST['action']) ? $_POST['action'] : '');
    $response = ['success' => false, 'error' => 'Invalid action'];
} else {
    // Handle regular page requests - show the interface
    $page_title = 'Dynamic Search Interface';
    include 'includes/header.php';
    
    // Get initial data for display
    $database = new Database();
    $db = $database->getConnection();
    
    // Get sample files data
    $sample_query = "SELECT uf.*, s.FirstName, s.Surname, s.Course 
                     FROM uploaded_files uf 
                     LEFT JOIN students s ON uf.StudentNo COLLATE utf8mb4_general_ci = s.StudentNo COLLATE utf8mb4_general_ci 
                     ORDER BY uf.upload_date DESC 
                     LIMIT 20";
    $sample_stmt = $db->prepare($sample_query);
    $sample_stmt->execute();
    $sample_files = $sample_stmt->fetchAll();
    
    // Get all students for filter
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
            $availableLength = $maxLength - strlen($extension) - 4;
            if ($availableLength > 0) {
                $truncatedName = substr($nameWithoutExt, 0, $availableLength) . '...';
                return $truncatedName . '.' . $extension;
            } else {
                return substr($filename, 0, $maxLength - 3) . '...';
            }
        } else {
            return substr($filename, 0, $maxLength - 3) . '...';
        }
    }
    ?>
    
    <div class="min-h-screen bg-gray-50">
        <!-- Navigation Header -->
        <nav class="glass-dark backdrop-blur-sm border-b px-6 py-4" style="border-color: var(--border);">
            <div class="flex items-center justify-between">
                <div class="flex items-center space-x-4">
                    <div class="w-10 h-10 bg-primary rounded-full flex items-center justify-center">
                        <i class="fas fa-search text-white"></i>
                    </div>
                    <div>
                        <h1 class="text-xl font-bold text-white">Dynamic Search Interface</h1>
                        <p class="text-sm text-light">Real-time file search and filtering</p>
                    </div>
                </div>
            </div>
        </nav>

        <div class="p-6">
            <div class="max-w-7xl mx-auto">
                <!-- Search Filters -->
                <div class="glass-card p-6 mb-6">
                    <h3 class="text-lg font-bold text-gray-800 mb-4">Search & Filter Files</h3>
                    <form id="searchForm" class="flex flex-wrap gap-4 items-end">
                        <div class="flex-1 min-w-64">
                            <label class="block text-sm font-medium text-gray-700 mb-2">Search Files</label>
                            <input 
                                type="text" 
                                id="searchInput"
                                placeholder="Search by file name, student name, or student ID..."
                                class="form-input w-full"
                                autocomplete="off"
                            >
                        </div>
                        
                        <div class="min-w-48">
                            <label class="block text-sm font-medium text-gray-700 mb-2">Filter by Student</label>
                            <select id="studentFilter" class="form-input w-full">
                                <option value="">All Students</option>
                                <?php foreach ($all_students as $student): ?>
                                    <option value="<?php echo htmlspecialchars($student['StudentNo']); ?>">
                                        <?php echo htmlspecialchars($student['FirstName'] . ' ' . $student['Surname'] . ' (' . $student['StudentNo'] . ')'); ?>
                                    </option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        
                        <button type="button" id="clearBtn" class="bg-gray-300 text-gray-700 py-2 px-4 rounded-lg hover:bg-gray-400 transition-colors">
                            <i class="fas fa-times mr-2"></i>Clear
                        </button>
                    </form>
                </div>

                <!-- Files Table -->
                <div class="glass-card p-6">
                    <h3 class="text-lg font-bold text-gray-800 mb-4">Files Results</h3>
                    
                    <div class="overflow-x-auto">
                        <table class="w-full">
                            <thead class="bg-gray-50">
                                <tr class="border-b border-gray-200">
                                    <th class="text-left py-3 px-4 font-semibold text-gray-700">File Name</th>
                                    <th class="text-left py-3 px-4 font-semibold text-gray-700">Student</th>
                                    <th class="text-left py-3 px-4 font-semibold text-gray-700">Upload Date</th>
                                    <th class="text-left py-3 px-4 font-semibold text-gray-700">File Size</th>
                                    <th class="text-left py-3 px-4 font-semibold text-gray-700">Pages</th>
                                    <th class="text-left py-3 px-4 font-semibold text-gray-700">Downloads</th>
                                </tr>
                            </thead>
                            <tbody id="filesTableBody">
                                <?php if (empty($sample_files)): ?>
                                    <tr>
                                        <td colspan="6" class="text-center py-12 text-gray-500">
                                            <i class="fas fa-inbox text-4xl mb-4 block"></i>
                                            No files found
                                        </td>
                                    </tr>
                                <?php else: ?>
                                    <?php foreach ($sample_files as $file): ?>
                                        <tr class="border-b border-gray-100 hover:bg-gray-50 transition-colors">
                                            <td class="py-3 px-4">
                                                <div class="flex items-center space-x-3">
                                                    <i class="fas fa-file text-primary-500"></i>
                                                    <div>
                                                        <p class="font-semibold text-gray-800" title="<?php echo htmlspecialchars($file['original_name']); ?>">
                                                            <?php echo htmlspecialchars(truncateFileName($file['original_name'])); ?>
                                                        </p>
                                                        <p class="text-xs text-gray-500"><?php echo htmlspecialchars($file['file_type'] ?? 'Unknown'); ?></p>
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
                                                <?php echo $file['page_count'] ?? 'N/A'; ?>
                                            </td>
                                            <td class="py-3 px-4 text-gray-600">
                                                <?php echo $file['download_count'] ?? 0; ?>
                                            </td>
                                        </tr>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
    // Simple live search with keypress
    let searchTimeout = null;

    document.addEventListener('DOMContentLoaded', function() {
        const searchInput = document.getElementById('searchInput');
        const studentFilter = document.getElementById('studentFilter');
        const clearBtn = document.getElementById('clearBtn');
        
        // Live search on keypress
        if (searchInput) {
            searchInput.addEventListener('keyup', function() {
                if (searchTimeout) {
                    clearTimeout(searchTimeout);
                }
                
                searchTimeout = setTimeout(function() {
                    performLiveSearch();
                }, 300);
            });
        }
        
        // Clear button functionality
        if (clearBtn) {
            clearBtn.addEventListener('click', function() {
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

    // Perform live search
    function performLiveSearch() {
        const searchInput = document.getElementById('searchInput');
        const studentFilter = document.getElementById('studentFilter');
        const filesTableBody = document.getElementById('filesTableBody');
        
        if (!searchInput || !filesTableBody) {
            return;
        }
        
        const searchTerm = searchInput.value.trim();
        const studentValue = studentFilter ? studentFilter.value : '';
        
        // Build URL parameters
        const params = new URLSearchParams({
            action: 'search_files',
            search: searchTerm,
            student: studentValue,
            page: 1,
            per_page: 20
        });
        
        // Show loading state
        filesTableBody.innerHTML = `
            <tr>
                <td colspan="6" class="text-center py-12">
                    <i class="fas fa-spinner fa-spin text-2xl text-blue-500"></i>
                    <p class="text-gray-500 mt-2">Searching...</p>
                </td>
            </tr>
        `;
        
        // Make AJAX request
        fetch(`dynamic.php?${params}`)
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    updateTableWithResults(data.data.files);
                } else {
                    showSearchError(data.error || 'Search failed');
                }
            })
            .catch(error => {
                console.error('Search error:', error);
                showSearchError('Network error occurred');
            });
    }

    // Update table with search results
    function updateTableWithResults(files) {
        const filesTableBody = document.getElementById('filesTableBody');
        
        if (!files || files.length === 0) {
            filesTableBody.innerHTML = `
                <tr>
                    <td colspan="6" class="text-center py-12 text-gray-500">
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
            
            html += `
                <tr class="border-b border-gray-100 hover:bg-gray-50 transition-colors">
                    <td class="py-3 px-4">
                        <div class="flex items-center space-x-3">
                            <i class="fas fa-file text-primary-500"></i>
                            <div>
                                <p class="font-semibold text-gray-800" title="${escapeHtml(file.original_name)}">${truncateFileName(escapeHtml(file.original_name), 30)}</p>
                                <p class="text-xs text-gray-500">${escapeHtml(file.file_type || 'Unknown')}</p>
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
                    <td class="py-3 px-4 text-gray-600">${file.page_count || 'N/A'}</td>
                    <td class="py-3 px-4 text-gray-600">${file.download_count || 0}</td>
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
                <td colspan="6" class="text-center py-12 text-red-500">
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
    </script>

    <?php 
    include 'includes/footer.php';
    exit; // Stop execution here for regular page requests
}

// Continue with AJAX handling below...

try {
    $database = new Database();
    $db = $database->getConnection();
    
    switch ($action) {
        case 'search_files':
            if ($method === 'GET') {
                $response = handleFileSearch($db);
            }
            break;
            
        case 'get_file_stats':
            if ($method === 'GET') {
                $response = handleFileStats($db);
            }
            break;
            
        case 'update_file_info':
            if ($method === 'POST') {
                $response = handleFileUpdate($db);
            }
            break;
            
        case 'get_recent_uploads':
            if ($method === 'GET') {
                $response = handleRecentUploads($db);
            }
            break;
            
        default:
            $response = ['success' => false, 'error' => 'Action not found'];
    }
    
} catch (Exception $e) {
    http_response_code(500);
    $response = [
        'success' => false,
        'error' => 'Server error: ' . $e->getMessage()
    ];
}

// Return JSON response
echo json_encode($response);

/**
 * Handle file search requests
 */
function handleFileSearch($db) {
    $search = isset($_GET['search']) ? trim($_GET['search']) : '';
    $student_filter = isset($_GET['student']) ? trim($_GET['student']) : '';
    $page = isset($_GET['page']) ? max(1, (int)$_GET['page']) : 1;
    $per_page = isset($_GET['per_page']) ? max(1, (int)$_GET['per_page']) : 10;
    $offset = ($page - 1) * $per_page;
    
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
    
    // Add user-specific filter if not admin
    if (isset($_SESSION['student_id'])) {
        $where_conditions[] = "uf.StudentNo = :current_student";
        $params[':current_student'] = $_SESSION['student_id'];
    }
    
    $where_clause = !empty($where_conditions) ? "WHERE " . implode(" AND ", $where_conditions) : "";
    
    // Get total count
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
    $total_pages = ceil($total_items / $per_page);
    
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
    $files_stmt->bindValue(':limit', $per_page, PDO::PARAM_INT);
    $files_stmt->bindValue(':offset', $offset, PDO::PARAM_INT);
    $files_stmt->execute();
    $files = $files_stmt->fetchAll();
    
    return [
        'success' => true,
        'data' => [
            'files' => $files,
            'pagination' => [
                'current_page' => $page,
                'total_pages' => $total_pages,
                'total_items' => $total_items,
                'items_per_page' => $per_page,
                'offset' => $offset
            ]
        ]
    ];
}

/**
 * Handle file statistics requests
 */
function handleFileStats($db) {
    $student_id = $_SESSION['student_id'] ?? null;
    
    if ($student_id) {
        // Student-specific stats
        $stats_query = "SELECT 
                        COUNT(*) as total_files,
                        SUM(file_size) as total_size,
                        AVG(file_size) as avg_size,
                        MAX(upload_date) as last_upload
                        FROM uploaded_files 
                        WHERE StudentNo = :student_id";
        $stats_stmt = $db->prepare($stats_query);
        $stats_stmt->bindParam(':student_id', $student_id);
        $stats_stmt->execute();
        $stats = $stats_stmt->fetch();
    } else {
        // Admin stats - all files
        $stats_query = "SELECT 
                        COUNT(*) as total_files,
                        SUM(file_size) as total_size,
                        AVG(file_size) as avg_size,
                        COUNT(DISTINCT StudentNo) as total_students,
                        MAX(upload_date) as last_upload
                        FROM uploaded_files";
        $stats_stmt = $db->prepare($stats_query);
        $stats_stmt->execute();
        $stats = $stats_stmt->fetch();
    }
    
    return [
        'success' => true,
        'data' => $stats
    ];
}

/**
 * Handle file information updates
 */
function handleFileUpdate($db) {
    $file_id = $_POST['file_id'] ?? null;
    $field = $_POST['field'] ?? null;
    $value = $_POST['value'] ?? null;
    
    if (!$file_id || !$field || !$value) {
        return ['success' => false, 'error' => 'Missing required parameters'];
    }
    
    // Validate allowed fields
    $allowed_fields = ['download_count'];
    if (!in_array($field, $allowed_fields)) {
        return ['success' => false, 'error' => 'Invalid field'];
    }
    
    // Check if user has permission to update this file
    $check_query = "SELECT StudentNo FROM uploaded_files WHERE id = :file_id";
    $check_stmt = $db->prepare($check_query);
    $check_stmt->bindParam(':file_id', $file_id);
    $check_stmt->execute();
    $file = $check_stmt->fetch();
    
    if (!$file) {
        return ['success' => false, 'error' => 'File not found'];
    }
    
    // Check permissions
    if (isset($_SESSION['student_id']) && $file['StudentNo'] !== $_SESSION['student_id']) {
        return ['success' => false, 'error' => 'Permission denied'];
    }
    
    // Update the file
    $update_query = "UPDATE uploaded_files SET $field = :value WHERE id = :file_id";
    $update_stmt = $db->prepare($update_query);
    $update_stmt->bindParam(':value', $value);
    $update_stmt->bindParam(':file_id', $file_id);
    
    if ($update_stmt->execute()) {
        return ['success' => true, 'message' => 'File updated successfully'];
    } else {
        return ['success' => false, 'error' => 'Failed to update file'];
    }
}

/**
 * Handle recent uploads requests
 */
function handleRecentUploads($db) {
    $limit = isset($_GET['limit']) ? min(50, max(1, (int)$_GET['limit'])) : 10;
    
    if (isset($_SESSION['student_id'])) {
        // Student-specific recent uploads
        $query = "SELECT uf.*, s.FirstName, s.Surname 
                  FROM uploaded_files uf 
                  LEFT JOIN students s ON uf.StudentNo COLLATE utf8mb4_general_ci = s.StudentNo COLLATE utf8mb4_general_ci 
                  WHERE uf.StudentNo = :student_id 
                  ORDER BY uf.upload_date DESC 
                  LIMIT :limit";
        $stmt = $db->prepare($query);
        $stmt->bindParam(':student_id', $_SESSION['student_id']);
        $stmt->bindParam(':limit', $limit, PDO::PARAM_INT);
    } else {
        // Admin - all recent uploads
        $query = "SELECT uf.*, s.FirstName, s.Surname 
                  FROM uploaded_files uf 
                  LEFT JOIN students s ON uf.StudentNo COLLATE utf8mb4_general_ci = s.StudentNo COLLATE utf8mb4_general_ci 
                  ORDER BY uf.upload_date DESC 
                  LIMIT :limit";
        $stmt = $db->prepare($query);
        $stmt->bindParam(':limit', $limit, PDO::PARAM_INT);
    }
    
    $stmt->execute();
    $files = $stmt->fetchAll();
    
    return [
        'success' => true,
        'data' => $files
    ];
}
?>
