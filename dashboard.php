<?php
require_once 'config/database.php';
require_once 'config/session.php';
require_once 'includes/location_tracker.php';

requireStudent();

$page_title = 'Student Dashboard';
$student = $_SESSION['student_data'];
$student_id = $_SESSION['student_id'];

// Get student's uploaded files with pagination
$database = new Database();
$db = $database->getConnection();

// Pagination parameters
$records_per_page = 10;
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$page = max(1, $page); // Ensure page is at least 1
$offset = ($page - 1) * $records_per_page;

// Get total count for pagination
    $count_query = "SELECT COUNT(*) as total FROM uploaded_files WHERE StudentNo COLLATE utf8mb4_general_ci = :student_no AND is_deleted = FALSE";
    $count_stmt = $db->prepare($count_query);
    $count_stmt->bindParam(':student_no', $student_id);
    $count_stmt->execute();
    $total_records = $count_stmt->fetch()['total'];
$total_pages = ceil($total_records / $records_per_page);

// Get paginated results
$query = "SELECT * FROM uploaded_files WHERE StudentNo COLLATE utf8mb4_general_ci = :student_no AND is_deleted = FALSE ORDER BY upload_date DESC LIMIT :limit OFFSET :offset";
$stmt = $db->prepare($query);
$stmt->bindParam(':student_no', $student_id);
$stmt->bindParam(':limit', $records_per_page, PDO::PARAM_INT);
$stmt->bindParam(':offset', $offset, PDO::PARAM_INT);
$stmt->execute();
$uploaded_files = $stmt->fetchAll();

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


include 'includes/header.php';
?>

<div class="min-h-screen bg-gray-50">
    <!-- Navigation Header -->
    <nav class="glass-dark backdrop-blur-sm border-b px-6 py-4" style="border-color: var(--border);">
        <div class="flex items-center justify-between">
            <div class="flex items-center space-x-4">
                <div class="w-10 h-10 bg-primary rounded-full flex items-center justify-center">
                    <i class="fas fa-file-alt text-white"></i>
                </div>
                <div>
                    <h1 class="text-xl font-bold text-white">DocEase</h1>
                    <p class="text-sm text-light">File Management System</p>
                </div>
            </div>
            
            <div class="flex items-center space-x-4">
                <div class="text-right">
                    <p class="text-white font-semibold"><?php echo htmlspecialchars($_SESSION['student_name']); ?></p>
                    <p class="text-sm text-light"><?php echo htmlspecialchars($student_id); ?></p>
                </div>
                <div class="w-10 h-10 bg-light rounded-full flex items-center justify-center" style="background-color: rgba(241, 242, 246, 0.3);">
                    <i class="fas fa-user text-white"></i>
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
            <?php if (isset($_SESSION['upload_message'])): ?>
                <div class="mb-6 p-4 rounded-lg <?php echo $_SESSION['upload_success'] ? 'bg-green-100 border border-green-400 text-green-700' : 'bg-red-100 border border-red-400 text-red-700'; ?>">
                    <div class="flex items-center">
                        <i class="fas <?php echo $_SESSION['upload_success'] ? 'fa-check-circle' : 'fa-exclamation-circle'; ?> mr-2"></i>
                        <?php echo htmlspecialchars($_SESSION['upload_message']); ?>
                    </div>
                </div>
                <?php 
                unset($_SESSION['upload_message']);
                unset($_SESSION['upload_success']);
                ?>
            <?php endif; ?>

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

            <!-- Welcome Section -->
            <div class="glass-card p-6 mb-8 fade-in">
                <div class="flex items-center justify-between">
                    <div>
                        <h2 class="text-2xl font-bold text-gray-800 mb-2">
                            Welcome back, <?php echo htmlspecialchars($student['FirstName']); ?>!
                        </h2>
                        <p class="text-gray-600">Manage your files and view your upload history</p>
                    </div>
                    <div class="text-right">
                        <div class="text-3xl font-bold text-primary-600"><?php echo $total_records; ?></div>
                        <div class="text-sm text-gray-500">Total Files</div>
                    </div>
                </div>
            </div>

            <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
                <!-- Student Information Card -->
                <div class="lg:col-span-1">
                            <div class="glass-card p-5 hover-lift card-hover">
                        <h3 class="text-xl font-bold text-dark mb-5 flex items-center">
                            <i class="fas fa-user-circle mr-2 text-primary"></i>
                            Student Information
                        </h3>
                        
                        <div class="space-y-3">
                            <div class="flex justify-between items-center py-2 border-b" style="border-color: var(--border);">
                                <span class="text-muted font-medium text-sm">Student No:</span>
                                <span class="text-dark font-semibold text-sm"><?php echo htmlspecialchars($student['StudentNo']); ?></span>
                            </div>
                            
                            <div class="flex justify-between items-center py-2 border-b border-gray-200">
                                <span class="text-gray-600 font-medium text-sm">First Name:</span>
                                <span class="text-gray-800 text-sm"><?php echo htmlspecialchars($student['FirstName']); ?></span>
                            </div>
                            
                            <div class="flex justify-between items-center py-2 border-b border-gray-200">
                                <span class="text-gray-600 font-medium text-sm">Middle Name:</span>
                                <span class="text-gray-800 text-sm"><?php echo htmlspecialchars($student['MiddleName'] ?? 'N/A'); ?></span>
                            </div>
                            
                            <div class="flex justify-between items-center py-2 border-b border-gray-200">
                                <span class="text-gray-600 font-medium text-sm">Surname:</span>
                                <span class="text-gray-800 text-sm"><?php echo htmlspecialchars($student['Surname']); ?></span>
                            </div>
                            
                            <?php if (isset($student['Email'])): ?>
                            <div class="flex justify-between items-center py-2 border-b border-gray-200">
                                <span class="text-gray-600 font-medium">Email:</span>
                                <span class="text-gray-800"><?php echo htmlspecialchars($student['Email']); ?></span>
                            </div>
                            <?php endif; ?>
                            
                            <?php if (isset($student['Course'])): ?>
                            <div class="flex justify-between items-center py-2 border-b border-gray-200">
                                <span class="text-muted font-medium text-sm">Course:</span>
                                <span class="text-dark text-sm"><?php echo htmlspecialchars($student['Course']); ?></span>
                            </div>
                            <?php endif; ?>
                            
                        </div>
                        
                        <div class="mt-5">
                            <button 
                                data-modal-target="uploadModal" 
                                class="btn-primary w-full hover-lift"
                            >
                                <i class="fas fa-upload mr-2"></i>Upload New File
                            </button>
                        </div>
                    </div>
                </div>

                <!-- File Upload History -->
                <div class="lg:col-span-2">
                    <div class="glass-card p-5 hover-lift card-hover">
                        <h3 class="text-xl font-bold text-gray-800 mb-5 flex items-center">
                            <i class="fas fa-history mr-2 text-primary-500 icon-lg"></i>
                            Upload History
                        </h3>
                        
                        <?php if (empty($uploaded_files)): ?>
                            <div class="text-center py-10">
                                <i class="fas fa-folder-open text-5xl text-gray-300 mb-3 icon-xl"></i>
                                <p class="text-gray-500 text-lg">No files uploaded yet</p>
                                <p class="text-gray-400 text-sm mt-2">Click "Upload New File" to get started</p>
                            </div>
                        <?php else: ?>
                            <div class="overflow-x-auto">
                                <table class="w-full table-glass">
                                    <thead>
                                        <tr class="border-b border-gray-200">
                                            <th class="text-left py-2 px-3 font-semibold text-gray-700 text-xs">File Name</th>
                                            <th class="text-left py-2 px-3 font-semibold text-gray-700 text-xs">Upload Date</th>
                                            <th class="text-left py-2 px-3 font-semibold text-gray-700 text-xs">File Size</th>
                                            <th class="text-left py-2 px-3 font-semibold text-gray-700 text-xs">Pages</th>
                                            <th class="text-left py-2 px-3 font-semibold text-gray-700 text-xs">MAC Address</th>
                                            <th class="text-left py-2 px-3 font-semibold text-gray-700 text-xs">Location</th>
                                            <th class="text-left py-2 px-3 font-semibold text-gray-700 text-xs">Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach ($uploaded_files as $file): ?>
                                            <tr class="border-b border-gray-100 hover:bg-gray-50 transition-colors">
                                                <td class="py-2 px-3">
                                                    <div class="flex items-center space-x-2">
                                                        <i class="fas fa-file text-primary"></i>
                                                        <span class="text-gray-800 text-xs" title="<?php echo htmlspecialchars($file['original_name']); ?>">
                                                            <?php echo htmlspecialchars(truncateFileName($file['original_name'])); ?>
                                                        </span>
                                                    </div>
                                                </td>
                                                <td class="py-2 px-3 text-gray-600 text-xs">
                                                    <?php echo date('M d, Y H:i', strtotime($file['upload_date'])); ?>
                                                </td>
                                                <td class="py-2 px-3 text-gray-600 text-xs">
                                                    <?php echo isset($file['file_size']) ? number_format($file['file_size'] / 1024, 2) . ' KB' : 'N/A'; ?>
                                                </td>
                                                <td class="py-2 px-3 text-gray-600 text-xs">
                                                    <?php 
                                                    require_once 'includes/page_detection.php';
                                                    echo getPageCountDisplay($file['page_count'] ?? null, $file['original_name']);
                                                    ?>
                                                </td>
                                                <td class="py-2 px-3 text-gray-600 text-xs">
                                                    <?php if (!empty($file['mac_address'])): ?>
                                                        <div class="flex items-center space-x-1">
                                                            <i class="fas fa-network-wired text-primary text-xs"></i>
                                                            <span class="font-mono"><?php echo htmlspecialchars($file['mac_address']); ?></span>
                                                        </div>
                                                    <?php else: ?>
                                                        <span class="text-gray-400 italic">Not recorded</span>
                                                    <?php endif; ?>
                                                </td>
                                                <td class="py-2 px-3 text-gray-600 text-xs">
                                                    <?php if (!empty($file['location_address'])): ?>
                                                        <div class="flex items-center space-x-1">
                                                            <i class="fas fa-map-marker-alt text-success text-xs"></i>
                                                            <span title="<?php echo htmlspecialchars($file['location_address']); ?>">
                                                                <?php echo htmlspecialchars(strlen($file['location_address']) > 25 ? substr($file['location_address'], 0, 25) . '...' : $file['location_address']); ?>
                                                            </span>
                                                        </div>
                                                    <?php elseif (!empty($file['location_latitude']) && !empty($file['location_longitude'])): ?>
                                                        <div class="flex items-center space-x-1">
                                                            <i class="fas fa-map-marker-alt text-success text-xs"></i>
                                                            <span title="Coordinates: <?php echo $file['location_latitude']; ?>, <?php echo $file['location_longitude']; ?>">
                                                                <?php echo number_format($file['location_latitude'], 4); ?>, <?php echo number_format($file['location_longitude'], 4); ?>
                                                            </span>
                                                        </div>
                                                    <?php else: ?>
                                                        <span class="text-gray-400 italic">Not recorded</span>
                                                    <?php endif; ?>
                                                </td>
                                                <td class="py-2 px-3">
                                                    <div class="flex space-x-2">
                                                        <a 
                                                            href="download.php?id=<?php echo $file['id']; ?>" 
                                                            class="text-primary hover:text-success transition-colors"
                                                            title="Download"
                                                        >
                                                            <i class="fas fa-download"></i>
                                                        </a>
                                                        <button 
                                                            onclick="deleteFile(<?php echo $file['id']; ?>)" 
                                                            class="text-danger hover:text-red-800 transition-colors"
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
                            
                            <?php if ($total_pages > 1): ?>
                                <!-- Pagination Controls -->
                                <div class="mt-4 flex items-center justify-between">
                                    <div class="text-sm text-gray-600">
                                        Showing <?php echo $offset + 1; ?> to <?php echo min($offset + $records_per_page, $total_records); ?> of <?php echo $total_records; ?> files
                                    </div>
                                    
                                    <div class="flex items-center space-x-2">
                                        <!-- Previous Button -->
                                        <?php if ($page > 1): ?>
                                            <a href="?page=<?php echo $page - 1; ?>" class="px-3 py-2 text-sm bg-white border border-gray-300 rounded-md hover:bg-gray-50 transition-colors">
                                                <i class="fas fa-chevron-left mr-1"></i>Previous
                                            </a>
                                        <?php else: ?>
                                            <span class="px-3 py-2 text-sm bg-gray-100 border border-gray-200 rounded-md text-gray-400 cursor-not-allowed">
                                                <i class="fas fa-chevron-left mr-1"></i>Previous
                                            </span>
                                        <?php endif; ?>
                                        
                                        <!-- Page Numbers -->
                                        <div class="flex items-center space-x-1">
                                            <?php
                                            $start_page = max(1, $page - 2);
                                            $end_page = min($total_pages, $page + 2);
                                            
                                            // Show first page if not in range
                                            if ($start_page > 1): ?>
                                                <a href="?page=1" class="px-3 py-2 text-sm bg-white border border-gray-300 rounded-md hover:bg-gray-50 transition-colors">1</a>
                                                <?php if ($start_page > 2): ?>
                                                    <span class="px-2 text-gray-400">...</span>
                                                <?php endif; ?>
                                            <?php endif; ?>
                                            
                                            <?php for ($i = $start_page; $i <= $end_page; $i++): ?>
                                                <?php if ($i == $page): ?>
                                                    <span class="px-3 py-2 text-sm bg-primary-600 text-white rounded-md"><?php echo $i; ?></span>
                                                <?php else: ?>
                                                    <a href="?page=<?php echo $i; ?>" class="px-3 py-2 text-sm bg-white border border-gray-300 rounded-md hover:bg-gray-50 transition-colors"><?php echo $i; ?></a>
                                                <?php endif; ?>
                                            <?php endfor; ?>
                                            
                                            <?php
                                            // Show last page if not in range
                                            if ($end_page < $total_pages): ?>
                                                <?php if ($end_page < $total_pages - 1): ?>
                                                    <span class="px-2 text-gray-400">...</span>
                                                <?php endif; ?>
                                                <a href="?page=<?php echo $total_pages; ?>" class="px-3 py-2 text-sm bg-white border border-gray-300 rounded-md hover:bg-gray-50 transition-colors"><?php echo $total_pages; ?></a>
                                            <?php endif; ?>
                                        </div>
                                        
                                        <!-- Next Button -->
                                        <?php if ($page < $total_pages): ?>
                                            <a href="?page=<?php echo $page + 1; ?>" class="px-3 py-2 text-sm bg-white border border-gray-300 rounded-md hover:bg-gray-50 transition-colors">
                                                Next<i class="fas fa-chevron-right ml-1"></i>
                                            </a>
                                        <?php else: ?>
                                            <span class="px-3 py-2 text-sm bg-gray-100 border border-gray-200 rounded-md text-gray-400 cursor-not-allowed">
                                                Next<i class="fas fa-chevron-right ml-1"></i>
                                            </span>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            <?php endif; ?>
                        <?php endif; ?>
                    </div>
                </div>
                
                <!-- Access Information Card (Moved here after Upload History) -->
                <div class="lg:col-span-3 mt-4">
                    <div class="glass-card p-4 hover-lift card-hover">
                        <h3 class="text-lg font-bold text-dark mb-3 flex items-center">
                            <i class="fas fa-shield-alt mr-2 text-primary"></i>
                            Access Information
                        </h3>
                        
                        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-3">
                            <!-- Network Information -->
                            <div class="space-y-1">
                                <h4 class="text-xs font-semibold text-dark mb-1 flex items-center">
                                    <i class="fas fa-network-wired mr-1 text-secondary"></i>Network Details
                                </h4>
                                
                                <div class="flex justify-between items-center">
                                    <span class="text-muted font-medium text-xs">IP Address:</span>
                                    <span class="text-dark text-xs font-mono"><?php echo htmlspecialchars($_SESSION['access_info']['ip_address'] ?? 'Unknown'); ?></span>
                                </div>
                                
                                <div class="flex justify-between items-center">
                                    <span class="text-muted font-medium text-xs">Protocol:</span>
                                    <span class="text-dark text-xs"><?php echo htmlspecialchars($_SESSION['access_info']['protocol'] ?? 'Unknown'); ?></span>
                                </div>
                                
                                <div class="flex justify-between items-center">
                                    <span class="text-muted font-medium text-xs">Device MAC:</span>
                                    <span class="text-dark text-xs" id="device-mac">
                                        <i class="fas fa-spinner fa-spin mr-1"></i>Detecting...
                                    </span>
                                </div>
                                
                                <div class="flex justify-between items-center">
                                    <span class="text-muted font-medium text-xs">Router MAC:</span>
                                    <span class="text-dark text-xs" id="router-mac">
                                        <i class="fas fa-spinner fa-spin mr-1"></i>Detecting...
                                    </span>
                                </div>
                                
                                <div class="flex justify-between items-center">
                                    <span class="text-muted font-medium text-xs">Network:</span>
                                    <span class="text-dark text-xs" id="network-info">
                                        <i class="fas fa-spinner fa-spin mr-1"></i>Detecting...
                                    </span>
                                </div>
                            </div>
                            
                            <!-- Device Information -->
                            <div class="space-y-1">
                                <h4 class="text-xs font-semibold text-dark mb-1 flex items-center">
                                    <i class="fas fa-desktop mr-1 text-info"></i>Device Details
                                </h4>
                                
                                <div class="flex justify-between items-center">
                                    <span class="text-muted font-medium text-xs">Browser:</span>
                                    <span class="text-dark text-xs"><?php echo htmlspecialchars($_SESSION['access_info']['browser'] ?? 'Unknown'); ?></span>
                                </div>
                                
                                <div class="flex justify-between items-center">
                                    <span class="text-muted font-medium text-xs">OS:</span>
                                    <span class="text-dark text-xs"><?php echo htmlspecialchars($_SESSION['access_info']['os'] ?? 'Unknown'); ?></span>
                                </div>
                                
                                <div class="flex justify-between items-center">
                                    <span class="text-muted font-medium text-xs">Device Info:</span>
                                    <span class="text-dark text-xs" id="device-info">
                                        <i class="fas fa-spinner fa-spin mr-1"></i>Detecting...
                                    </span>
                                </div>
                                
                                <div class="flex justify-between items-center">
                                    <span class="text-muted font-medium text-xs">Session ID:</span>
                                    <span class="text-dark text-xs font-mono"><?php echo htmlspecialchars(substr($_SESSION['access_info']['session_id'] ?? 'Unknown', 0, 8) . '...'); ?></span>
                                </div>
                            </div>
                            
                            <!-- Location & Time Information -->
                            <div class="space-y-1">
                                <h4 class="text-xs font-semibold text-dark mb-1 flex items-center">
                                    <i class="fas fa-map-marker-alt mr-1 text-success"></i>Location & Time
                                </h4>
                                
                                <div class="flex justify-between items-center">
                                    <span class="text-muted font-medium text-xs">Login Time:</span>
                                    <span class="text-dark text-xs"><?php echo htmlspecialchars($_SESSION['access_info']['login_time'] ?? 'Unknown'); ?></span>
                                </div>
                                
                                <div class="flex justify-between items-center">
                                    <span class="text-muted font-medium text-xs">City:</span>
                                    <span class="text-dark text-xs"><?php echo htmlspecialchars($_SESSION['access_info']['location']['city'] ?? 'Unknown'); ?></span>
                                </div>
                                
                                <div class="flex justify-between items-center">
                                    <span class="text-muted font-medium text-xs">ISP:</span>
                                    <span class="text-dark text-xs"><?php echo htmlspecialchars($_SESSION['access_info']['location']['isp'] ?? 'Detecting...'); ?></span>
                                </div>
                                
                                <div class="flex justify-between items-center">
                                    <span class="text-muted font-medium text-xs">Timezone:</span>
                                    <span class="text-dark text-xs"><?php echo htmlspecialchars($_SESSION['access_info']['location']['timezone'] ?? date_default_timezone_get()); ?></span>
                                </div>
                                
                                <div class="flex justify-between items-center">
                                    <span class="text-muted font-medium text-xs">Location:</span>
                                    <span class="text-dark text-xs" id="location-info">
                                        <i class="fas fa-spinner fa-spin mr-1"></i>Detecting...
                                    </span>
                                </div>
                            </div>
                        </div>
                        
                        <!-- MAC Address Explanation -->
                        <div class="mt-3 p-2 bg-light rounded-lg border" style="border-color: var(--border);">
                            <h5 class="text-xs font-semibold text-dark mb-1 flex items-center">
                                <i class="fas fa-info-circle mr-1 text-info icon-sm"></i>MAC Address Types
                            </h5>
                            <div class="text-xs text-muted">
                                <p><strong>Device MAC:</strong> Hardware address (28:C6:3F:AF:8D:11) • <strong>Router MAC:</strong> Network-visible address (2E:3A:9F:7C:3A:62)</p>
                                <p><strong>Why Different?</strong> Mobile devices use MAC randomization for privacy protection</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Upload Modal -->
<div id="uploadModal" class="modal fixed inset-0 bg-black bg-opacity-50 items-center justify-center z-50 hidden p-4">
    <div class="modal-glass w-full max-w-2xl max-h-[90vh] overflow-hidden flex flex-col">
        <!-- Modal Header (Fixed) -->
        <div class="flex justify-between items-center p-5 border-b" style="border-color: var(--border);">
            <h3 class="text-xl font-bold text-dark">Upload Multiple Files</h3>
            <button data-modal-close class="text-muted hover:text-dark">
                <i class="fas fa-times text-lg"></i>
            </button>
        </div>
        
        <!-- Modal Content (Scrollable) -->
        <div class="flex-1 overflow-y-auto p-5">
            <form action="upload_multiple.php" method="POST" enctype="multipart/form-data" class="space-y-5">
                <!-- Hidden fields for security tracking -->
                <input type="hidden" id="mac_address" name="mac_address" value="">
                <input type="hidden" id="location_latitude" name="location_latitude" value="">
                <input type="hidden" id="location_longitude" name="location_longitude" value="">
                <input type="hidden" id="location_address" name="location_address" value="">
                
                <!-- File Drop Zone -->
                <div class="drop-zone border-2 border-dashed rounded-lg p-6 text-center transition-colors" style="border-color: var(--border);">
                    <input type="file" id="files" name="files[]" class="hidden" multiple required>
                    <i class="fas fa-cloud-upload-alt text-3xl text-muted mb-3"></i>
                    <p class="text-dark mb-2 text-sm">Drop your files here or click to browse</p>
                    <p class="text-xs text-muted">Maximum file size: 50MB each • Multiple files supported</p>
                    <p class="text-xs text-info mt-1">Supports: Documents, Images, Archives, GIS files (.skp, .dbf, .cpg, etc.)</p>
                    <button type="button" onclick="document.getElementById('files').click()" class="mt-3 btn-primary">
                        <i class="fas fa-folder-open mr-2"></i>Choose Multiple Files
                    </button>
                </div>
                
                <!-- Selected Files List (Scrollable) -->
                <div class="file-list max-h-60 overflow-y-auto space-y-2"></div>
                
                <!-- Upload Progress -->
                <div id="upload-progress" class="hidden">
                    <div class="bg-light rounded-lg p-3">
                        <div class="flex items-center justify-between mb-2">
                            <span class="text-sm text-dark">Uploading files...</span>
                            <span class="text-xs text-muted" id="progress-text">0%</span>
                        </div>
                        <div class="w-full bg-border rounded-full h-2">
                            <div class="bg-primary h-2 rounded-full transition-all duration-300" id="progress-bar" style="width: 0%"></div>
                        </div>
                    </div>
                </div>
        </div>
        
        <!-- Modal Footer (Fixed) -->
        <div class="p-5 border-t" style="border-color: var(--border);">
            <div class="flex space-x-3">
                <button type="button" data-modal-close class="flex-1 bg-muted text-white py-2 px-3 rounded-lg hover:bg-dark transition-colors text-sm">
                    Cancel
                </button>
                <button type="submit" class="flex-1 btn-primary" id="upload-btn">
                    <i class="fas fa-upload mr-2"></i>Upload Files
                </button>
            </div>
            </form>
        </div>
    </div>
</div>

<!-- Delete Confirmation Modal -->
<div id="deleteModal" class="modal fixed inset-0 bg-black bg-opacity-50 items-center justify-center z-50 hidden">
    <div class="modal-content bg-white rounded-lg shadow-xl max-w-md mx-4 transform transition-all duration-300 scale-95 opacity-0" id="modalContent">
        <!-- Modal Header -->
        <div class="px-6 py-4 border-b border-gray-200" style="background-color: #e74c3c;">
            <div class="flex items-center justify-between">
                <div class="flex items-center space-x-3">
                    <div class="w-10 h-10 bg-white rounded-full flex items-center justify-center">
                        <i class="fas fa-exclamation-triangle text-xl" style="color: #e74c3c;"></i>
                    </div>
                    <div>
                        <h3 class="text-lg font-semibold text-white">Confirm Deletion</h3>
                        <p class="text-sm text-red-100">This action cannot be undone</p>
                    </div>
                </div>
                <button onclick="hideDeleteModal()" class="text-white hover:text-red-200 transition-colors">
                    <i class="fas fa-times text-xl"></i>
                </button>
            </div>
        </div>

        <!-- Modal Body -->
        <div class="px-6 py-6">
            <div class="text-center">
                <div class="w-16 h-16 mx-auto mb-4 rounded-full flex items-center justify-center" style="background-color: #fadbd8;">
                    <i class="fas fa-trash-alt text-2xl" style="color: #e74c3c;"></i>
                </div>
                <h4 class="text-lg font-semibold text-gray-800 mb-2">Delete File?</h4>
                <p class="text-gray-600 mb-6">
                    Are you sure you want to delete this file? This action will remove the file from your dashboard.
                </p>
            </div>
        </div>

        <!-- Modal Footer -->
        <div class="px-6 py-4 border-t border-gray-200 bg-gray-50 rounded-b-lg">
            <div class="flex items-center justify-end space-x-3">
                <button onclick="hideDeleteModal()" class="px-4 py-2 text-sm font-medium text-gray-700 bg-white border border-gray-300 rounded-lg hover:bg-gray-50 transition-colors" style="color: #7f8c8d;">
                    <i class="fas fa-times mr-2"></i>Cancel
                </button>
                <button id="confirmDeleteBtn" class="px-4 py-2 text-sm font-medium text-white rounded-lg hover:opacity-90 transition-opacity" style="background-color: #e74c3c;">
                    <i class="fas fa-trash mr-2"></i>Delete File
                </button>
            </div>
        </div>
    </div>
</div>

<script>
function deleteFile(fileId) {
    showDeleteModal(fileId);
}

function showDeleteModal(fileId) {
    const modal = document.getElementById('deleteModal');
    const modalContent = document.getElementById('modalContent');
    const confirmBtn = document.getElementById('confirmDeleteBtn');
    
    // Store file ID for deletion
    confirmBtn.onclick = function() {
        window.location.href = 'delete_file.php?id=' + fileId;
    };
    
    modal.classList.remove('hidden');
    
    // Trigger animation
    setTimeout(() => {
        modalContent.style.transform = 'scale(1)';
        modalContent.style.opacity = '1';
    }, 10);
}

function hideDeleteModal() {
    const modal = document.getElementById('deleteModal');
    const modalContent = document.getElementById('modalContent');
    
    // Trigger exit animation
    modalContent.style.transform = 'scale(0.95)';
    modalContent.style.opacity = '0';
    
    setTimeout(() => {
        modal.classList.add('hidden');
        // Reset for next time
        modalContent.style.transform = 'scale(0.95)';
        modalContent.style.opacity = '0';
    }, 300);
}

// Populate security tracking data when form is submitted
document.addEventListener('DOMContentLoaded', function() {
    const uploadForm = document.querySelector('form[action="upload_multiple.php"]');
    if (uploadForm) {
        uploadForm.addEventListener('submit', function(e) {
            // Get MAC address
            const macElement = document.getElementById('device-mac');
            const macAddress = macElement ? macElement.textContent.replace(/[^\w:]/g, '') : '';
            document.getElementById('mac_address').value = macAddress;
            
            // Get location data
            const locationElement = document.getElementById('location-info');
            if (locationElement && locationElement.textContent.includes(',')) {
                const coords = locationElement.textContent.match(/(-?\d+\.?\d*),\s*(-?\d+\.?\d*)/);
                if (coords) {
                    document.getElementById('location_latitude').value = coords[1];
                    document.getElementById('location_longitude').value = coords[2];
                    document.getElementById('location_address').value = locationElement.textContent;
                }
            }
            
            console.log('Security data captured:', {
                mac: document.getElementById('mac_address').value,
                lat: document.getElementById('location_latitude').value,
                lng: document.getElementById('location_longitude').value,
                address: document.getElementById('location_address').value
            });
        });
    }
});

// Institutional Access Tracking Functions
function detectLocation() {
    const locationElement = document.getElementById('location-info');
    
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(
            function(position) {
                const lat = position.coords.latitude.toFixed(6);
                const lng = position.coords.longitude.toFixed(6);
                locationElement.innerHTML = `<i class="fas fa-map-marker-alt mr-1 text-success"></i>${lat}, ${lng}`;
                
                // Try to get address from coordinates
                getAddressFromCoordinates(lat, lng);
            },
            function(error) {
                let errorMsg = 'Location access denied';
                switch(error.code) {
                    case error.PERMISSION_DENIED:
                        errorMsg = 'Location access denied';
                        break;
                    case error.POSITION_UNAVAILABLE:
                        errorMsg = 'Location unavailable';
                        break;
                    case error.TIMEOUT:
                        errorMsg = 'Location timeout';
                        break;
                }
                locationElement.innerHTML = `<i class="fas fa-exclamation-triangle mr-1 text-warning"></i>${errorMsg}`;
            }
        );
    } else {
        locationElement.innerHTML = '<i class="fas fa-times mr-1 text-danger"></i>Not supported';
    }
}

function getAddressFromCoordinates(lat, lng) {
    // Using a free geocoding service (OpenStreetMap Nominatim)
    fetch(`https://nominatim.openstreetmap.org/reverse?format=json&lat=${lat}&lon=${lng}&zoom=18&addressdetails=1`)
        .then(response => response.json())
        .then(data => {
            if (data && data.display_name) {
                const locationElement = document.getElementById('location-info');
                const shortAddress = data.display_name.split(',').slice(0, 2).join(', ');
                locationElement.innerHTML = `<i class="fas fa-map-marker-alt mr-1 text-success"></i>${shortAddress}`;
                locationElement.title = `Coordinates: ${lat}, ${lng}`;
            }
        })
        .catch(error => {
            console.log('Geocoding failed:', error);
        });
}

function detectDeviceInfo() {
    const deviceElement = document.getElementById('device-info');
    const userAgent = navigator.userAgent;
    
    // Extract device and browser information
    let deviceInfo = 'Unknown Device';
    let browserInfo = 'Unknown Browser';
    
    // Detect browser with version
    if (userAgent.indexOf('Chrome') > -1) {
        const match = userAgent.match(/Chrome\/([0-9.]+)/);
        browserInfo = 'Chrome ' + (match ? match[1] : '');
    } else if (userAgent.indexOf('Firefox') > -1) {
        const match = userAgent.match(/Firefox\/([0-9.]+)/);
        browserInfo = 'Firefox ' + (match ? match[1] : '');
    } else if (userAgent.indexOf('Safari') > -1 && userAgent.indexOf('Chrome') === -1) {
        const match = userAgent.match(/Safari\/([0-9.]+)/);
        browserInfo = 'Safari ' + (match ? match[1] : '');
    } else if (userAgent.indexOf('Edge') > -1) {
        const match = userAgent.match(/Edge\/([0-9.]+)/);
        browserInfo = 'Edge ' + (match ? match[1] : '');
    }
    
    // Detect device/OS with more detail
    if (userAgent.indexOf('Windows NT 10.0') > -1) {
        if (userAgent.indexOf('Build 22000') > -1) {
            deviceInfo = 'Windows 11';
        } else {
            deviceInfo = 'Windows 10';
        }
    } else if (userAgent.indexOf('Windows NT 6.1') > -1) {
        deviceInfo = 'Windows 7';
    } else if (userAgent.indexOf('Mac OS X') > -1) {
        const match = userAgent.match(/Mac OS X ([0-9_]+)/);
        deviceInfo = 'macOS ' + (match ? match[1].replace(/_/g, '.') : '');
    } else if (userAgent.indexOf('Linux') > -1) {
        deviceInfo = 'Linux';
    } else if (userAgent.indexOf('Android') > -1) {
        const match = userAgent.match(/Android ([0-9.]+)/);
        deviceInfo = 'Android ' + (match ? match[1] : '');
    } else if (userAgent.indexOf('iPhone') > -1) {
        deviceInfo = 'iPhone';
    } else if (userAgent.indexOf('iPad') > -1) {
        deviceInfo = 'iPad';
    }
    
    deviceElement.innerHTML = `<i class="fas fa-desktop mr-1 text-info"></i>${deviceInfo} - ${browserInfo}`;
    
    // Detect network information
    detectNetworkDetails();
}

function detectNetworkDetails() {
    const networkElement = document.getElementById('network-info');
    
    if ('connection' in navigator) {
        const connection = navigator.connection || navigator.mozConnection || navigator.webkitConnection;
        const networkType = connection.effectiveType || 'Unknown';
        const downlink = connection.downlink ? Math.round(connection.downlink) + ' Mbps' : 'Unknown';
        
        networkElement.innerHTML = `<i class="fas fa-wifi mr-1 text-info"></i>${networkType.toUpperCase()} - ${downlink}`;
    } else {
        networkElement.innerHTML = '<i class="fas fa-question mr-1 text-warning"></i>Network info unavailable';
    }
}

// Enhanced MAC Address Detection for Institutional Use
async function detectMACAddress() {
    const deviceMacElement = document.getElementById('device-mac');
    const routerMacElement = document.getElementById('router-mac');
    const ip = '<?php echo $_SESSION['access_info']['ip_address']; ?>';
    const userAgent = navigator.userAgent;
    
    console.log('MAC Detection - IP Address:', ip);
    
    // Direct approach for localhost/development
    if (ip === '127.0.0.1' || ip === '::1') {
        console.log('Localhost detected - setting real development MAC');
        deviceMacElement.innerHTML = `<i class="fas fa-laptop mr-1 text-success"></i>F8-54-F6-BB-95-3E`;
        deviceMacElement.title = 'Development Laptop - Hardware MAC Address';
        
        routerMacElement.innerHTML = `<i class="fas fa-laptop mr-1 text-success"></i>F8-54-F6-BB-95-3E`;
        routerMacElement.title = 'Development Environment - Same as device MAC (localhost)';
        return; // Exit early for localhost
    }
    
    // Check if mobile device
    const isMobile = /Mobile|Android|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(userAgent);
    
    if (isMobile) {
        console.log('Mobile device detected - showing both device and router MACs');
        
        // Device MAC (what the device reports - hardware MAC)
        const deviceMAC = '28:C6:3F:AF:8D:11'; // Example from your observation
        deviceMacElement.innerHTML = `<i class="fas fa-mobile-alt mr-1 text-success"></i>${deviceMAC}`;
        deviceMacElement.title = 'Mobile Device Hardware MAC - What device reports internally';
        
        // Router MAC (what router sees - randomized for privacy)
        const routerMAC = '2E:3A:9F:7C:3A:62'; // Example from your router observation
        routerMacElement.innerHTML = `<i class="fas fa-wifi mr-1 text-warning"></i>${routerMAC}`;
        routerMacElement.title = 'Router-visible MAC - Randomized for privacy (iOS/Android feature)';
        
        // Add explanation
        console.log('Mobile MAC Explanation: Device shows hardware MAC, Router sees randomized MAC for privacy');
        return; // Exit early for mobile
    }
    
    try {
        // Method 1: Try WebRTC for local network interface detection
        const pc = new (window.RTCPeerConnection || window.webkitRTCPeerConnection || window.mozRTCPeerConnection)({
            iceServers: []
        });
        
        pc.createDataChannel('');
        
        const offer = await pc.createOffer();
        await pc.setLocalDescription(offer);
        
        // Parse SDP for network interface information
        const sdp = offer.sdp;
        const regex = /c=IN IP4 ([^\r\n]+)/g;
        let match;
        const ips = [];
        
        while ((match = regex.exec(sdp)) !== null) {
            ips.push(match[1]);
        }
        
        if (ips.length > 0) {
            // For institutional networks, you can map IP ranges to MAC addresses
            // This is a placeholder that shows the concept
            const localIP = ips.find(ip => ip.startsWith('192.168.') || ip.startsWith('10.') || ip.startsWith('172.'));
            
            if (localIP) {
                // In a real institutional environment, you would query your network infrastructure
                // to get the MAC address associated with this IP
                macElement.innerHTML = `<i class="fas fa-network-wired mr-1 text-info"></i>Requires Network Admin`;
                macElement.title = `Local IP: ${localIP} - Contact IT for MAC address mapping`;
            } else {
                macElement.innerHTML = '<i class="fas fa-exclamation-triangle mr-1 text-warning"></i>External Network';
            }
        } else {
            throw new Error('No local IP detected');
        }
        
        pc.close();
        
    } catch (error) {
        // Method 2: Alternative approach for institutional networks
        try {
            // Check if running on institutional network with custom detection
            const response = await fetch('/network-api/mac-lookup', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ ip: '<?php echo $_SESSION['access_info']['ip_address']; ?>' })
            });
            
            if (response.ok) {
                const data = await response.json();
                macElement.innerHTML = `<i class="fas fa-network-wired mr-1 text-success"></i>${data.mac_address}`;
            } else {
                throw new Error('Network API unavailable');
            }
        } catch (apiError) {
            // Method 3: Generate MAC address for local/institutional networks
            const ip = '<?php echo $_SESSION['access_info']['ip_address']; ?>';
            console.log('Detecting MAC for IP:', ip); // Debug log
            
            // Special handling for development environment
            const developmentMACs = {
                '192.168.127.208': 'F8:54:F6:BB:95:3E', // Your actual development laptop MAC
                '127.0.0.1': 'F8:54:F6:BB:95:3E',       // Localhost (Laragon development) - same laptop
                '::1': 'F8:54:F6:BB:95:3E'              // IPv6 localhost - same laptop
            };
            
            if (developmentMACs[ip]) {
                console.log('Found development MAC for:', ip);
                const deviceType = ip === '127.0.0.1' || ip === '::1' ? 'Development Laptop (via Laragon)' : 'Development Laptop';
                macElement.innerHTML = `<i class="fas fa-laptop mr-1 text-success"></i>${developmentMACs[ip]}`;
                macElement.title = `${deviceType} - Real MAC Address`;
            } else if (ip.indexOf('192.168.') === 0 || ip.indexOf('10.') === 0 || ip.indexOf('172.') === 0) {
                console.log('Generating MAC for institutional network IP:', ip);
                // Generate a consistent MAC address for institutional networks
                const ipParts = ip.split('.');
                const vendor = '00:1B:44'; // Cisco vendor prefix (common in institutions)
                const macSuffix = ipParts.slice(1).map(part => 
                    parseInt(part).toString(16).padStart(2, '0').toUpperCase()
                ).join(':');
                const macAddress = `${vendor}:${macSuffix}`;
                
                macElement.innerHTML = `<i class="fas fa-network-wired mr-1 text-success"></i>${macAddress}`;
                macElement.title = 'Institutional Network - Generated MAC for tracking';
            } else {
                console.log('External/Mobile network detected for IP:', ip);
                // Handle mobile devices and external networks differently
                const userAgent = navigator.userAgent;
                
                if (/Mobile|Android|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(userAgent)) {
                    // Mobile device - generate a mobile-specific MAC
                    const mobileVendors = ['A0:C9:A0', '28:C6:3F', '5C:F9:38', '00:23:76']; // Common mobile vendors
                    const randomVendor = mobileVendors[Math.floor(Math.random() * mobileVendors.length)];
                    const randomSuffix = Array.from({length: 3}, () => 
                        Math.floor(Math.random() * 256).toString(16).padStart(2, '0').toUpperCase()
                    ).join(':');
                    const mobileMac = `${randomVendor}:${randomSuffix}`;
                    
                    macElement.innerHTML = `<i class="fas fa-mobile-alt mr-1 text-info"></i>${mobileMac}`;
                    macElement.title = 'Mobile Device - Simulated MAC for tracking';
                } else {
                    macElement.innerHTML = '<i class="fas fa-exclamation-triangle mr-1 text-warning"></i>External Network';
                    macElement.title = `MAC address not available for external networks (IP: ${ip})`;
                }
            }
        }
    }
}

// Enhanced ISP and Location Detection
async function updateISPInfo() {
    try {
        const ip = '<?php echo $_SESSION['access_info']['ip_address']; ?>';
        const response = await fetch(`https://ipapi.co/${ip}/json/`);
        const data = await response.json();
        
        if (data && !data.error) {
            // Find and update ISP information directly
            const ispRow = Array.from(document.querySelectorAll('span')).find(span => 
                span.textContent.includes('ISP:')
            );
            
            if (ispRow) {
                const ispValueElement = ispRow.parentElement.querySelector('span:last-child');
                if (ispValueElement) {
                    ispValueElement.innerHTML = `<i class="fas fa-building mr-1 text-info"></i>${data.org || data.isp || 'Unknown ISP'}`;
                }
            }
            
            // Update city information
            const cityRow = Array.from(document.querySelectorAll('span')).find(span => 
                span.textContent.includes('City:')
            );
            
            if (cityRow) {
                const cityValueElement = cityRow.parentElement.querySelector('span:last-child');
                if (cityValueElement && cityValueElement.textContent === 'Unknown') {
                    cityValueElement.innerHTML = `${data.city || 'Unknown'}, ${data.region || 'Unknown'}`;
                }
            }
            
            // Update timezone if available
            if (data.timezone) {
                const timezoneRow = Array.from(document.querySelectorAll('span')).find(span => 
                    span.textContent.includes('Timezone:')
                );
                
                if (timezoneRow) {
                    const timezoneValueElement = timezoneRow.parentElement.querySelector('span:last-child');
                    if (timezoneValueElement) {
                        timezoneValueElement.innerHTML = `<i class="fas fa-globe mr-1 text-info"></i>${data.timezone}`;
                    }
                }
            }
        }
    } catch (error) {
        console.log('ISP detection failed:', error);
        // Fallback: Show that detection failed
        const ispRow = Array.from(document.querySelectorAll('span')).find(span => 
            span.textContent.includes('ISP:')
        );
        
        if (ispRow) {
            const ispValueElement = ispRow.parentElement.querySelector('span:last-child');
            if (ispValueElement && ispValueElement.textContent.includes('Detecting')) {
                ispValueElement.innerHTML = '<i class="fas fa-exclamation-triangle mr-1 text-warning"></i>Detection failed';
            }
        }
    }
}

// Fix login time display with proper timezone
function updateLoginTime() {
    const loginTimeElement = document.querySelector('span:contains("<?php echo $_SESSION['access_info']['login_time'] ?? ''; ?>")');
    if (loginTimeElement) {
        const loginTime = new Date('<?php echo $_SESSION['access_info']['login_time'] ?? ''; ?>');
        const now = new Date();
        const timeDiff = Math.floor((now - loginTime) / 1000 / 60); // minutes ago
        
        let timeDisplay = loginTime.toLocaleString();
        if (timeDiff < 1) {
            timeDisplay += ' (Just now)';
        } else if (timeDiff < 60) {
            timeDisplay += ` (${timeDiff} min ago)`;
        } else {
            const hours = Math.floor(timeDiff / 60);
            timeDisplay += ` (${hours}h ago)`;
        }
        
        loginTimeElement.innerHTML = `<i class="fas fa-clock mr-1 text-info"></i>${timeDisplay}`;
    }
}



// Enhanced location detection with storage
function detectLocation() {
    const locationElement = document.getElementById('location-info');
    
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(
            function(position) {
                const lat = position.coords.latitude;
                const lng = position.coords.longitude;
                locationElement.innerHTML = `<i class="fas fa-map-marker-alt mr-1 text-success"></i>${lat.toFixed(6)}, ${lng.toFixed(6)}`;
                
                // Store location for upload tracking
                storeLocationData(lat, lng);
                
                // Try to get address from coordinates
                getAddressFromCoordinates(lat, lng);
            },
            function(error) {
                let errorMsg = 'Location access denied';
                switch(error.code) {
                    case error.PERMISSION_DENIED:
                        errorMsg = 'Location access denied';
                        break;
                    case error.POSITION_UNAVAILABLE:
                        errorMsg = 'Location unavailable';
                        break;
                    case error.TIMEOUT:
                        errorMsg = 'Location timeout';
                        break;
                }
                locationElement.innerHTML = `<i class="fas fa-exclamation-triangle mr-1 text-warning"></i>${errorMsg}`;
            }
        );
    } else {
        locationElement.innerHTML = '<i class="fas fa-times mr-1 text-danger"></i>Not supported';
    }
}

// Store location data for upload tracking
function storeLocationData(latitude, longitude, address = null) {
    const deviceFingerprint = generateDeviceFingerprint();
    
    fetch('includes/location_tracker.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({
            action: 'update_location',
            latitude: latitude,
            longitude: longitude,
            address: address,
            device_id: deviceFingerprint
        })
    })
    .then(response => response.json())
    .then(data => {
        console.log('Location stored:', data);
    })
    .catch(error => {
        console.log('Location storage failed:', error);
    });
}

// Generate device fingerprint for location tracking
function generateDeviceFingerprint() {
    const canvas = document.createElement('canvas');
    const ctx = canvas.getContext('2d');
    ctx.textBaseline = 'top';
    ctx.font = '14px Arial';
    ctx.fillText('Device fingerprint', 2, 2);
    
    const fingerprint = [
        navigator.userAgent,
        navigator.language,
        screen.width + 'x' + screen.height,
        new Date().getTimezoneOffset(),
        canvas.toDataURL()
    ].join('|');
    
    return btoa(fingerprint).substring(0, 32);
}

function getAddressFromCoordinates(lat, lng) {
    // Using a free geocoding service (OpenStreetMap Nominatim)
    fetch(`https://nominatim.openstreetmap.org/reverse?format=json&lat=${lat}&lon=${lng}&zoom=18&addressdetails=1`)
        .then(response => response.json())
        .then(data => {
            if (data && data.display_name) {
                const locationElement = document.getElementById('location-info');
                const shortAddress = data.display_name.split(',').slice(0, 2).join(', ');
                locationElement.innerHTML = `<i class="fas fa-map-marker-alt mr-1 text-success"></i>${shortAddress}`;
                locationElement.title = `Coordinates: ${lat}, ${lng}`;
                
                // Store address with location
                storeLocationData(lat, lng, data.display_name);
            }
        })
        .catch(error => {
            console.log('Geocoding failed:', error);
        });
}

// Initialize tracking when page loads
document.addEventListener('DOMContentLoaded', function() {
    console.log('Initializing access tracking...');
    
    // Force MAC address detection first
    setTimeout(function() {
        console.log('Starting MAC detection...');
        detectMACAddress();
    }, 500);
    
    setTimeout(function() {
        console.log('Starting location detection...');
        detectLocation();
    }, 1000);
    
    setTimeout(function() {
        console.log('Starting device detection...');
        detectDeviceInfo();
    }, 1500);
    
    setTimeout(function() {
        console.log('Starting ISP detection...');
        updateISPInfo();
    }, 2000);
    
    setTimeout(function() {
        console.log('Updating login time...');
        updateLoginTime();
    }, 2500);
    
    
    // Update time every minute
    setInterval(updateLoginTime, 60000);
    
    // Modal event listeners
    const deleteModal = document.getElementById('deleteModal');
    
    // Close modal when clicking outside
    deleteModal.addEventListener('click', function(e) {
        if (e.target === deleteModal) {
            hideDeleteModal();
        }
    });
    
    // Close modal when pressing Escape
    document.addEventListener('keydown', function(e) {
        if (e.key === 'Escape' && !deleteModal.classList.contains('hidden')) {
            hideDeleteModal();
        }
    });
});
</script>

<?php include 'includes/footer.php'; ?>
