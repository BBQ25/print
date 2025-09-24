<?php
require_once '../config/database.php';
require_once '../config/session.php';

$page_title = 'Admin Login';
$error_message = '';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $password = trim($_POST['password']);
    
    if (empty($password)) {
        $error_message = 'Please enter the admin password';
    } else {
        $database = new Database();
        $db = $database->getConnection();
        
        try {
            // Check if password exists in admin table
            $query = "SELECT * FROM admin_users WHERE password = :password AND status = 'active'";
            $stmt = $db->prepare($query);
            $stmt->bindParam(':password', $password);
            $stmt->execute();
            
            if ($stmt->rowCount() > 0) {
                $admin = $stmt->fetch();
                $_SESSION['admin_id'] = $admin['id'];
                $_SESSION['admin_name'] = $admin['name'];
                $_SESSION['admin_role'] = $admin['role'];
                
                header('Location: dashboard.php');
                exit();
            } else {
                $error_message = 'Invalid admin password.';
            }
        } catch (PDOException $e) {
            $error_message = 'Database error: ' . $e->getMessage();
        }
    }
}

// Redirect if already logged in
if (isAdmin()) {
    header('Location: dashboard.php');
    exit();
}

include '../includes/header.php';
?>

<div class="min-h-screen flex items-center justify-center p-6">
    <div class="glass-card p-8 w-full max-w-md hover-lift">
        <!-- Logo/Header -->
        <div class="text-center mb-8">
            <div class="w-20 h-20 bg-danger rounded-full flex items-center justify-center mx-auto mb-4">
                <i class="fas fa-user-shield text-white text-2xl"></i>
            </div>
            <h1 class="text-3xl font-bold text-dark mb-2">Admin Panel</h1>
            <p class="text-muted">DocEase Administration</p>
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
                <label for="password" class="block text-sm font-medium text-dark mb-2">
                    <i class="fas fa-key mr-2"></i>Admin Password
                </label>
                <input 
                    type="password" 
                    id="password" 
                    name="password" 
                    class="form-input w-full"
                    placeholder="Enter admin password"
                    value="<?php echo isset($_POST['password']) ? htmlspecialchars($_POST['password']) : ''; ?>"
                    required
                    autofocus
                >
            </div>

            <button 
                type="submit" 
                class="btn-primary w-full text-center font-semibold py-3 hover-lift"
            >
                <i class="fas fa-sign-in-alt mr-2"></i>Access Admin Panel
            </button>
        </form>

        <!-- Additional Links -->
        <div class="mt-8 text-center">
            <div class="text-sm text-muted mb-4">
                <i class="fas fa-shield-alt mr-1"></i>
                Secure admin access only
            </div>
            <div>
                <a href="../login.php" class="text-secondary hover:text-primary text-sm transition-colors">
                    <i class="fas fa-arrow-left mr-1"></i>Back to Student Login
                </a>
            </div>
        </div>
    </div>
</div>

<?php include '../includes/footer.php'; ?>
