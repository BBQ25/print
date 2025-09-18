<?php
require_once '../config/database.php';
require_once '../config/session.php';

$page_title = 'Admin Login';
$error_message = '';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = trim($_POST['username']);
    $password = trim($_POST['password']);
    
    if (empty($username) || empty($password)) {
        $error_message = 'Please enter both username and password';
    } else {
        // For demo purposes, using hardcoded admin credentials
        // In production, this should be stored in database with proper hashing
        if ($username === 'admin' && $password === 'admin123') {
            $_SESSION['admin_id'] = 'admin';
            $_SESSION['admin_name'] = 'Administrator';
            
            header('Location: dashboard.php');
            exit();
        } else {
            $error_message = 'Invalid username or password.';
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
                <label for="username" class="block text-sm font-medium text-dark mb-2">
                    <i class="fas fa-user mr-2"></i>Username
                </label>
                <input 
                    type="text" 
                    id="username" 
                    name="username" 
                    class="form-input w-full"
                    placeholder="Enter your username"
                    value="<?php echo isset($_POST['username']) ? htmlspecialchars($_POST['username']) : ''; ?>"
                    required
                >
            </div>

            <div>
                <label for="password" class="block text-sm font-medium text-dark mb-2">
                    <i class="fas fa-lock mr-2"></i>Password
                </label>
                <input 
                    type="password" 
                    id="password" 
                    name="password" 
                    class="form-input w-full"
                    placeholder="Enter your password"
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
            <div class="text-sm text-muted mb-4">
                <strong>Demo Credentials:</strong><br>
                Username: admin<br>
                Password: admin123
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
