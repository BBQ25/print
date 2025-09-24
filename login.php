<?php
require_once 'config/database.php';
require_once 'config/session.php';
require_once 'includes/network_info.php';

$page_title = 'Student Login';
$error_message = '';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $students_no = trim($_POST['students_no']);
    
    if (empty($students_no)) {
        $error_message = 'Please enter your Student Number';
    } else {
        $database = new Database();
        $db = $database->getConnection();
        
        try {
            $query = "SELECT * FROM students WHERE StudentNo COLLATE utf8mb4_general_ci = :student_no";
            $stmt = $db->prepare($query);
            $stmt->bindParam(':student_no', $students_no);
            $stmt->execute();
            
            if ($stmt->rowCount() > 0) {
                $student = $stmt->fetch();
                $_SESSION['student_id'] = $student['StudentNo'];
                $_SESSION['student_name'] = $student['FirstName'] . ' ' . $student['Surname'];
                $_SESSION['student_data'] = $student;
                
                // Capture comprehensive access information for institutional tracking
                $network_info = getNetworkInfo();
                $ip_location = getLocationFromIP($network_info['ip_address']);
                
                // Set timezone to Philippines for accurate institutional time
                date_default_timezone_set('Asia/Manila');
                
                $_SESSION['access_info'] = [
                    'ip_address' => $network_info['ip_address'],
                    'user_agent' => $network_info['user_agent'],
                    'browser' => getBrowserInfo($network_info['user_agent']),
                    'os' => getOperatingSystem($network_info['user_agent']),
                    'protocol' => $network_info['protocol'],
                    'login_time' => date('Y-m-d H:i:s T'),
                    'login_timestamp' => time(),
                    'session_id' => session_id(),
                    'location' => $ip_location
                ];
                
                // Log access for institutional security
                logAccess($student['StudentNo'], 'login');
                
                header('Location: dashboard.php');
                exit();
            } else {
                $error_message = 'Invalid Student Number. Please try again.';
            }
        } catch (PDOException $e) {
            $error_message = 'Database error: ' . $e->getMessage();
        }
    }
}

// Redirect if already logged in
if (isStudent()) {
    header('Location: dashboard.php');
    exit();
}

include 'includes/header.php';
?>

<div class="min-h-screen flex items-center justify-center p-6">
    <div class="glass-card p-8 w-full max-w-md hover-lift">
        <!-- Logo/Header -->
        <div class="text-center mb-8">
            <div class="w-20 h-20 bg-primary rounded-full flex items-center justify-center mx-auto mb-4">
                <i class="fas fa-file-alt text-white text-2xl"></i>
            </div>
            <h1 class="text-3xl font-bold text-dark mb-2">DocEase</h1>
            <p class="text-muted">Student File Management System</p>
        </div>

        <!-- Login Form -->
        <form method="POST" class="space-y-6">
            <?php if ($error_message): ?>
                <div class="alert alert-danger">
                    <div class="flex items-center">
                        <i class="fas fa-exclamation-circle mr-2"></i>
                        <?php echo htmlspecialchars($error_message); ?>
                    </div>
                </div>
            <?php endif; ?>

            <div>
                <label for="students_no" class="block text-sm font-medium text-dark mb-2">
                    <i class="fas fa-id-card mr-2"></i>Student Number
                </label>
                <input 
                    type="text" 
                    id="students_no" 
                    name="students_no" 
                    class="form-input w-full"
                    placeholder="Enter your student number"
                    value="<?php echo isset($_POST['students_no']) ? htmlspecialchars($_POST['students_no']) : ''; ?>"
                    required
                >
            </div>

            <button 
                type="submit" 
                class="btn-primary w-full text-center font-semibold py-3 hover-lift"
            >
                <i class="fas fa-sign-in-alt mr-2"></i>Sign In
            </button>
        </form>

        <!-- Additional Links -->
        <div class="mt-8 text-center">
            <p class="text-muted text-sm">
                Developer: Sumacot, J.R.M - Baul, S. 2025
            </p>
        </div>
    </div>
</div>

<!-- Admin Access Modal -->
<div id="adminAccessModal" class="modal fixed inset-0 bg-black bg-opacity-50 items-center justify-center z-50 hidden">
    <div class="modal-glass w-full max-w-md mx-4 transform transition-all duration-300 scale-95 opacity-0" id="modalContent">
        <!-- Modal Header -->
        <div class="flex justify-between items-center p-6 border-b" style="border-color: var(--border);">
            <div class="flex items-center space-x-3">
                <div class="w-12 h-12 rounded-full flex items-center justify-center" style="background-color: #e74c3c;">
                    <i class="fas fa-user-shield text-white text-xl"></i>
                </div>
                <div>
                    <h3 class="text-xl font-bold text-dark">Admin Access</h3>
                    <p class="text-sm text-muted">Secret pathway detected</p>
                </div>
            </div>
            <button id="closeModal" class="text-muted hover:text-dark transition-colors">
                <i class="fas fa-times text-xl"></i>
            </button>
        </div>
        
        <!-- Modal Body -->
        <div class="p-6">
            <div class="text-center mb-6">
                <div class="key-icon-container w-20 h-20 rounded-full flex items-center justify-center mx-auto mb-4 animate-pulse" style="background-color: #27ae60;">
                    <i class="fas fa-key text-white text-2xl"></i>
                </div>
                <h4 class="text-lg font-semibold text-dark mb-2">Access Granted!</h4>
                <p class="text-muted text-sm">
                    You've successfully completed the secret sequence. 
                    Ready to access the admin panel?
                </p>
            </div>
            
            <!-- Security Indicator -->
            <div class="rounded-lg p-4 mb-6 border" style="background-color: #d5f4e6; border-color: #27ae60;">
                <div class="flex items-center justify-center space-x-2">
                    <div class="w-2 h-2 rounded-full animate-ping" style="background-color: #27ae60;"></div>
                    <span class="text-sm font-medium" style="color: #27ae60;">Secure Admin Access Verified</span>
                    <i class="fas fa-shield-check ml-2" style="color: #27ae60;"></i>
                </div>
            </div>
        </div>
        
        <!-- Modal Footer -->
        <div class="flex space-x-2 p-4 border-t" style="border-color: var(--border);">
            <button id="cancelAccess" class="flex-1 py-2 px-3 rounded-lg transition-colors font-medium text-sm" style="background-color: #95a5a6; color: white;" onmouseover="this.style.backgroundColor='#7f8c8d'" onmouseout="this.style.backgroundColor='#95a5a6'">
                <i class="fas fa-times mr-1"></i>Cancel
            </button>
            <button id="confirmAccess" class="flex-1 py-2 px-3 rounded-lg transition-all duration-200 font-medium text-sm transform hover:scale-105" style="background-color: #3498db; color: white;" onmouseover="this.style.backgroundColor='#2980b9'" onmouseout="this.style.backgroundColor='#3498db'">
                <i class="fas fa-sign-in-alt mr-1"></i>Access Admin Panel
            </button>
        </div>
    </div>
</div>

<script>
// Hidden Admin Access Feature
let clickCount = 0;
let clickTimeout = null;
const requiredClicks = 7;
const clickDelay = 1000; // 1 second between clicks

// Add click listener to the background (body)
document.addEventListener('click', function(event) {
    // Only count clicks on the background, not on the login card
    const loginCard = document.querySelector('.glass-card');
    if (loginCard && loginCard.contains(event.target)) {
        return; // Don't count clicks on the login card
    }
    
    // Clear previous timeout
    if (clickTimeout) {
        clearTimeout(clickTimeout);
    }
    
    clickCount++;
    console.log(`Background click ${clickCount}/${requiredClicks}`);
    
    // Reset count after delay if not enough clicks
    clickTimeout = setTimeout(function() {
        if (clickCount < requiredClicks) {
            console.log('Click sequence reset - too slow');
            clickCount = 0;
        }
    }, clickDelay);
    
    // Check if we have enough clicks
    if (clickCount >= requiredClicks) {
        console.log('Admin access granted!');
        showAdminAccessModal();
        
        // Reset counter
        clickCount = 0;
        if (clickTimeout) {
            clearTimeout(clickTimeout);
        }
    }
});

// Visual feedback for clicks (optional - subtle indicator)
document.addEventListener('click', function(event) {
    const loginCard = document.querySelector('.glass-card');
    if (loginCard && loginCard.contains(event.target)) {
        return; // Don't show feedback for card clicks
    }
    
    // Create subtle click indicator
    const indicator = document.createElement('div');
    indicator.style.position = 'fixed';
    indicator.style.left = event.clientX + 'px';
    indicator.style.top = event.clientY + 'px';
    indicator.style.width = '10px';
    indicator.style.height = '10px';
    indicator.style.background = '#3498db';
    indicator.style.borderRadius = '50%';
    indicator.style.pointerEvents = 'none';
    indicator.style.zIndex = '9999';
    indicator.style.animation = 'fadeOut 1s ease-out forwards';
    
    document.body.appendChild(indicator);
    
    // Remove indicator after animation
    setTimeout(() => {
        if (indicator.parentNode) {
            indicator.parentNode.removeChild(indicator);
        }
    }, 1000);
});

// Add CSS animation for click indicator and cursor
const style = document.createElement('style');
style.textContent = `
    @keyframes fadeOut {
        0% {
            opacity: 1;
            transform: scale(1);
        }
        100% {
            opacity: 0;
            transform: scale(2);
        }
    }
    
    @keyframes pulse {
        0% {
            transform: scale(1);
            box-shadow: 0 0 10px rgba(52, 152, 219, 0.5);
        }
        50% {
            transform: scale(1.1);
            box-shadow: 0 0 20px rgba(52, 152, 219, 0.8);
        }
        100% {
            transform: scale(1);
            box-shadow: 0 0 10px rgba(52, 152, 219, 0.5);
        }
    }
    
    @keyframes cursorFocus {
        0% {
            opacity: 1;
            transform: translate(-50%, -50%) scale(0.5);
            border-color: #3498db;
        }
        50% {
            opacity: 0.8;
            transform: translate(-50%, -50%) scale(1.2);
            border-color: #2980b9;
        }
        100% {
            opacity: 0;
            transform: translate(-50%, -50%) scale(2);
            border-color: #1f4e79;
        }
    }
    
    @keyframes cursorGlow {
        0% {
            opacity: 0;
            transform: translate(-50%, -50%) scale(0.5);
        }
        30% {
            opacity: 0.8;
            transform: translate(-50%, -50%) scale(1);
        }
        70% {
            opacity: 0.4;
            transform: translate(-50%, -50%) scale(1.2);
        }
        100% {
            opacity: 0;
            transform: translate(-50%, -50%) scale(1.5);
        }
    }
    
    @keyframes fadeInOut {
        0% {
            opacity: 0;
            transform: translateX(-50%) translateY(10px);
        }
        20% {
            opacity: 1;
            transform: translateX(-50%) translateY(0px);
        }
        80% {
            opacity: 1;
            transform: translateX(-50%) translateY(0px);
        }
        100% {
            opacity: 0;
            transform: translateX(-50%) translateY(-10px);
        }
    }
`;
document.head.appendChild(style);

// Admin Access Modal Functions
function showAdminAccessModal() {
    const modal = document.getElementById('adminAccessModal');
    const modalContent = document.getElementById('modalContent');
    
    modal.classList.remove('hidden');
    modal.classList.add('flex');
    
    // Trigger animation
    setTimeout(() => {
        modalContent.classList.remove('scale-95', 'opacity-0');
        modalContent.classList.add('scale-100', 'opacity-100');
        
        // Move cursor to key icon after modal appears
        setTimeout(() => {
            moveCursorToKeyIcon();
        }, 300);
    }, 10);
}

// Function to simulate mouse cursor pointing to key icon
function moveCursorToKeyIcon() {
    const keyIcon = document.querySelector('.key-icon-container');
    if (keyIcon) {
        const rect = keyIcon.getBoundingClientRect();
        const centerX = rect.left + rect.width / 2;
        const centerY = rect.top + rect.height / 2;
        
        // Hide the real cursor
        document.body.style.cursor = 'none';
        
        // Create a realistic cursor that looks like the system cursor
        const cursor = document.createElement('div');
        cursor.id = 'simulated-cursor';
        cursor.style.position = 'fixed';
        cursor.style.left = (centerX - 1) + 'px';
        cursor.style.top = (centerY - 1) + 'px';
        cursor.style.width = '20px';
        cursor.style.height = '20px';
        cursor.style.pointerEvents = 'none';
        cursor.style.zIndex = '99999';
        cursor.style.background = 'url("data:image/svg+xml,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' width=\'20\' height=\'20\' viewBox=\'0 0 20 20\'%3E%3Cpath d=\'M2 2l6 8l-2 2l-2-2l-2 2z\' fill=\'black\'/%3E%3Cpath d=\'M1 1l6 8l-2 2l-2-2l-2 2z\' fill=\'white\'/%3E%3C/svg%3E") no-repeat';
        cursor.style.backgroundSize = 'contain';
        cursor.style.transition = 'all 0.3s ease-out';
        
        document.body.appendChild(cursor);
        
        // Add a subtle glow effect
        const glow = document.createElement('div');
        glow.style.position = 'fixed';
        glow.style.left = centerX + 'px';
        glow.style.top = centerY + 'px';
        glow.style.width = '60px';
        glow.style.height = '60px';
        glow.style.borderRadius = '50%';
        glow.style.background = 'radial-gradient(circle, rgba(52, 152, 219, 0.3) 0%, rgba(52, 152, 219, 0.1) 50%, transparent 100%)';
        glow.style.pointerEvents = 'none';
        glow.style.zIndex = '99998';
        glow.style.transform = 'translate(-50%, -50%)';
        glow.style.animation = 'cursorGlow 3s ease-out forwards';
        
        document.body.appendChild(glow);
        
        // Show instruction text
        const instruction = document.createElement('div');
        instruction.style.position = 'fixed';
        instruction.style.left = centerX + 'px';
        instruction.style.top = (centerY + 40) + 'px';
        instruction.style.transform = 'translateX(-50%)';
        instruction.style.color = '#3498db';
        instruction.style.fontSize = '12px';
        instruction.style.fontWeight = 'bold';
        instruction.style.pointerEvents = 'none';
        instruction.style.zIndex = '99999';
        instruction.style.background = 'rgba(255, 255, 255, 0.9)';
        instruction.style.padding = '4px 8px';
        instruction.style.borderRadius = '4px';
        instruction.style.border = '1px solid #3498db';
        instruction.textContent = 'Cursor positioned here';
        instruction.style.animation = 'fadeInOut 3s ease-out forwards';
        
        document.body.appendChild(instruction);
        
        // Restore cursor and cleanup after 3 seconds
        setTimeout(() => {
            document.body.style.cursor = 'auto';
            if (cursor.parentNode) {
                cursor.parentNode.removeChild(cursor);
            }
            if (glow.parentNode) {
                glow.parentNode.removeChild(glow);
            }
            if (instruction.parentNode) {
                instruction.parentNode.removeChild(instruction);
            }
        }, 3000);
    }
}

function hideAdminAccessModal() {
    const modal = document.getElementById('adminAccessModal');
    const modalContent = document.getElementById('modalContent');
    
    modalContent.classList.remove('scale-100', 'opacity-100');
    modalContent.classList.add('scale-95', 'opacity-0');
    
    setTimeout(() => {
        modal.classList.add('hidden');
        modal.classList.remove('flex');
    }, 300);
}

// Modal Event Listeners
document.addEventListener('DOMContentLoaded', function() {
    const modal = document.getElementById('adminAccessModal');
    const closeModal = document.getElementById('closeModal');
    const cancelAccess = document.getElementById('cancelAccess');
    const confirmAccess = document.getElementById('confirmAccess');
    
    // Close modal events
    if (closeModal) {
        closeModal.addEventListener('click', hideAdminAccessModal);
    }
    
    if (cancelAccess) {
        cancelAccess.addEventListener('click', hideAdminAccessModal);
    }
    
    // Confirm access
    if (confirmAccess) {
        confirmAccess.addEventListener('click', function() {
            // Add loading state
            const originalText = confirmAccess.innerHTML;
            confirmAccess.innerHTML = '<i class="fas fa-spinner fa-spin mr-2"></i>Redirecting...';
            confirmAccess.disabled = true;
            
            // Redirect after a short delay for visual feedback
            setTimeout(() => {
                window.location.href = 'admin/login.php';
            }, 500);
        });
    }
    
    // Close modal when clicking outside
    if (modal) {
        modal.addEventListener('click', function(event) {
            if (event.target === modal) {
                hideAdminAccessModal();
            }
        });
    }
});
</script>

<?php include 'includes/footer.php'; ?>
