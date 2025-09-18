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
                Need help? Contact your administrator
            </p>
            <div class="mt-4">
                <a href="admin/login.php" class="text-secondary hover:text-primary text-sm transition-colors">
                    <i class="fas fa-user-shield mr-1"></i>Admin Login
                </a>
            </div>
        </div>
    </div>
</div>

<?php include 'includes/footer.php'; ?>
