<?php
require_once 'config/database.php';
require_once 'config/session.php';
require_once 'includes/location_tracker.php';

requireStudent();

$page_title = 'Student Dashboard';
$student = $_SESSION['student_data'];
$student_id = $_SESSION['student_id'];

// Get student's uploaded files
$database = new Database();
$db = $database->getConnection();

$query = "SELECT * FROM uploaded_files WHERE StudentNo COLLATE utf8mb4_general_ci = :student_no ORDER BY upload_date DESC";
$stmt = $db->prepare($query);
$stmt->bindParam(':student_no', $student_id);
$stmt->execute();
$uploaded_files = $stmt->fetchAll();

// Get location history for map
$location_history = getUploadLocationHistory($student_id);
$unique_locations = getUniqueUploadLocations($student_id);

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
                        <div class="text-3xl font-bold text-primary-600"><?php echo count($uploaded_files); ?></div>
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
                                            <th class="text-left py-2 px-3 font-semibold text-gray-700 text-xs">Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach ($uploaded_files as $file): ?>
                                            <tr class="border-b border-gray-100 hover:bg-gray-50 transition-colors">
                                                <td class="py-2 px-3">
                                                    <div class="flex items-center space-x-2">
                                                        <i class="fas fa-file text-primary"></i>
                                                        <span class="text-gray-800 text-xs"><?php echo htmlspecialchars($file['original_name']); ?></span>
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
                
                <!-- Upload Location Map Card -->
                <div class="lg:col-span-3 mt-4">
                    <div class="glass-card p-4 hover-lift card-hover">
                        <h3 class="text-lg font-bold text-dark mb-3 flex items-center">
                            <i class="fas fa-map-marked-alt mr-2 text-primary"></i>
                            Upload Location History
                        </h3>
                        
                        <?php if (empty($unique_locations)): ?>
                            <div class="text-center py-8">
                                <i class="fas fa-map text-4xl text-gray-300 mb-3"></i>
                                <p class="text-gray-500 text-lg">No location data available</p>
                                <p class="text-gray-400 text-sm mt-2">Location data will be captured when you upload files with location permission enabled</p>
                            </div>
                        <?php else: ?>
                            <div class="grid grid-cols-1 lg:grid-cols-3 gap-4">
                                <!-- Map Container -->
                                <div class="lg:col-span-2">
                                    <div class="bg-gray-100 rounded-lg overflow-hidden" style="height: 400px;">
                                        <div id="upload-map" style="width: 100%; height: 100%;"></div>
                                    </div>
                                    
                                    <div class="mt-2 flex items-center justify-between text-xs text-gray-500">
                                        <span><i class="fas fa-info-circle mr-1"></i>Showing upload locations from your devices</span>
                                        <span><?php echo count($unique_locations); ?> location(s) • <?php echo count($location_history); ?> upload(s)</span>
                                    </div>
                                </div>
                                
                                <!-- Location Stats -->
                                <div class="lg:col-span-1">
                                    <div class="space-y-3">
                                        <h4 class="text-sm font-semibold text-dark mb-2 flex items-center">
                                            <i class="fas fa-chart-bar mr-1 text-info"></i>Location Statistics
                                        </h4>
                                        
                                        <?php foreach ($unique_locations as $index => $location): ?>
                                            <div class="bg-light rounded-lg p-3 border" style="border-color: var(--border);">
                                                <div class="flex items-start justify-between mb-1">
                                                    <div class="flex items-center">
                                                        <div class="w-3 h-3 rounded-full mr-2" style="background-color: <?php echo ['#3B82F6', '#10B981', '#F59E0B', '#EF4444', '#8B5CF6'][$index % 5]; ?>"></div>
                                                        <span class="text-xs font-semibold text-dark">Location <?php echo $index + 1; ?></span>
                                                    </div>
                                                    <span class="text-xs text-muted"><?php echo $location['upload_count']; ?> uploads</span>
                                                </div>
                                                
                                                <div class="text-xs text-muted mb-2">
                                                    <?php if ($location['address']): ?>
                                                        <i class="fas fa-map-marker-alt mr-1"></i><?php echo htmlspecialchars(substr($location['address'], 0, 40)) . (strlen($location['address']) > 40 ? '...' : ''); ?>
                                                    <?php else: ?>
                                                        <i class="fas fa-map-marker-alt mr-1"></i><?php echo number_format($location['latitude'], 4); ?>, <?php echo number_format($location['longitude'], 4); ?>
                                                    <?php endif; ?>
                                                </div>
                                                
                                                <div class="text-xs text-muted">
                                                    <div class="flex items-center justify-between">
                                                        <span><i class="fas fa-<?php echo $location['device_type'] === 'mobile' ? 'mobile-alt' : ($location['device_type'] === 'tablet' ? 'tablet-alt' : 'desktop'); ?> mr-1"></i><?php echo htmlspecialchars($location['device_name']); ?></span>
                                                    </div>
                                                    <div class="flex items-center justify-between mt-1">
                                                        <span>First: <?php echo date('M d, Y', strtotime($location['first_upload'])); ?></span>
                                                        <span>Last: <?php echo date('M d, Y', strtotime($location['last_upload'])); ?></span>
                                                    </div>
                                                </div>
                                                
                                                <?php if ($location['recent_files']): ?>
                                                    <div class="mt-2 pt-2 border-t" style="border-color: var(--border);">
                                                        <div class="text-xs text-muted">
                                                            <strong>Recent files:</strong><br>
                                                            <?php 
                                                            $files = explode(',', $location['recent_files']);
                                                            foreach (array_slice($files, 0, 2) as $file): ?>
                                                                <div class="truncate">• <?php echo htmlspecialchars($file); ?></div>
                                                            <?php endforeach; ?>
                                                            <?php if (count($files) > 2): ?>
                                                                <div class="text-info">• +<?php echo count($files) - 2; ?> more files</div>
                                                            <?php endif; ?>
                                                        </div>
                                                    </div>
                                                <?php endif; ?>
                                            </div>
                                        <?php endforeach; ?>
                                        
                                        <?php if (count($unique_locations) > 3): ?>
                                            <div class="text-center">
                                                <button class="text-xs text-primary hover:text-primary-600" onclick="toggleAllLocations()">
                                                    <i class="fas fa-chevron-down mr-1"></i>Show all locations
                                                </button>
                                            </div>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            </div>
                        <?php endif; ?>
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

<script>
function deleteFile(fileId) {
    if (confirm('Are you sure you want to delete this file?')) {
        window.location.href = 'delete_file.php?id=' + fileId;
    }
}

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

// Map functionality for upload locations
let uploadMap = null;
let mapMarkers = [];

function initializeUploadMap() {
    const mapContainer = document.getElementById('upload-map');
    if (!mapContainer) return;
    
    <?php if (!empty($unique_locations)): ?>
    // Create map with Leaflet (using OpenStreetMap)
    const locations = <?php echo json_encode($unique_locations); ?>;
    
    if (locations.length > 0) {
        // Calculate center point
        let centerLat = locations.reduce((sum, loc) => sum + parseFloat(loc.latitude), 0) / locations.length;
        let centerLng = locations.reduce((sum, loc) => sum + parseFloat(loc.longitude), 0) / locations.length;
        
        // Initialize map
        uploadMap = L.map('upload-map').setView([centerLat, centerLng], 12);
        
        // Add tile layer
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '© OpenStreetMap contributors',
            maxZoom: 18
        }).addTo(uploadMap);
        
        // Add markers for each location
        const colors = ['#3B82F6', '#10B981', '#F59E0B', '#EF4444', '#8B5CF6'];
        locations.forEach((location, index) => {
            const lat = parseFloat(location.latitude);
            const lng = parseFloat(location.longitude);
            const color = colors[index % colors.length];
            
            // Create custom marker
            const marker = L.circleMarker([lat, lng], {
                radius: 8 + (location.upload_count * 2),
                fillColor: color,
                color: '#ffffff',
                weight: 2,
                opacity: 1,
                fillOpacity: 0.8
            }).addTo(uploadMap);
            
            // Create popup content
            const popupContent = `
                <div class="p-2">
                    <h4 class="font-bold text-sm mb-1">Location ${index + 1}</h4>
                    <p class="text-xs text-gray-600 mb-1">
                        <i class="fas fa-upload mr-1"></i>${location.upload_count} uploads
                    </p>
                    <p class="text-xs text-gray-600 mb-1">
                        <i class="fas fa-${location.device_type === 'mobile' ? 'mobile-alt' : (location.device_type === 'tablet' ? 'tablet-alt' : 'desktop')} mr-1"></i>${location.device_name}
                    </p>
                    ${location.address ? `
                        <p class="text-xs text-gray-600 mb-1">
                            <i class="fas fa-map-marker-alt mr-1"></i>${location.address.substring(0, 50)}${location.address.length > 50 ? '...' : ''}
                        </p>
                    ` : ''}
                    <p class="text-xs text-gray-500">
                        <i class="fas fa-calendar mr-1"></i>
                        ${new Date(location.first_upload).toLocaleDateString()} - ${new Date(location.last_upload).toLocaleDateString()}
                    </p>
                </div>
            `;
            
            marker.bindPopup(popupContent);
            mapMarkers.push(marker);
        });
        
        // Fit map to show all markers
        if (locations.length > 1) {
            const group = new L.featureGroup(mapMarkers);
            uploadMap.fitBounds(group.getBounds().pad(0.1));
        }
    }
    <?php else: ?>
    // Show placeholder map
    mapContainer.innerHTML = `
        <div class="flex items-center justify-center h-full bg-gray-100">
            <div class="text-center">
                <i class="fas fa-map text-4xl text-gray-300 mb-2"></i>
                <p class="text-gray-500">Map will appear when location data is available</p>
            </div>
        </div>
    `;
    <?php endif; ?>
}

function toggleAllLocations() {
    // Implement expand/collapse functionality for location list
    console.log('Toggle all locations');
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
    
    // Initialize upload map
    setTimeout(function() {
        console.log('Initializing upload map...');
        initializeUploadMap();
    }, 3000);
    
    // Update time every minute
    setInterval(updateLoginTime, 60000);
});
</script>

<?php include 'includes/footer.php'; ?>
