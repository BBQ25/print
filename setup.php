<?php
/**
 * DocEase File Management System - Automated Setup
 * This script will automatically install the database and create necessary directories
 */

// Prevent running if system is already installed
if (file_exists('config/installed.lock')) {
    die('System is already installed. Delete config/installed.lock to reinstall.');
}

$page_title = 'DocEase Setup';
$step = isset($_GET['step']) ? (int)$_GET['step'] : 1;
$errors = [];
$success = [];

// Handle form submissions
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_POST['test_connection'])) {
        $step = 2;
    } elseif (isset($_POST['install_database'])) {
        $step = 3;
    } elseif (isset($_POST['complete_setup'])) {
        $step = 4;
    }
}

include 'includes/header.php';
?>

<div class="min-h-screen flex items-center justify-center p-6">
    <div class="glass-card p-8 w-full max-w-2xl hover-lift">
        <!-- Header -->
        <div class="text-center mb-8">
            <div class="w-20 h-20 bg-gradient-to-br from-primary-500 to-purple-600 rounded-full flex items-center justify-center mx-auto mb-4">
                <i class="fas fa-cog text-white text-2xl"></i>
            </div>
            <h1 class="text-3xl font-bold text-white mb-2">DocEase Setup</h1>
            <p class="text-gray-200">File Management System Installation</p>
        </div>

        <!-- Progress Bar -->
        <div class="mb-8">
            <div class="flex items-center justify-between mb-2">
                <span class="text-sm text-gray-200">Setup Progress</span>
                <span class="text-sm text-gray-200"><?php echo $step; ?>/4</span>
            </div>
            <div class="w-full bg-gray-600 rounded-full h-2">
                <div class="bg-primary-500 h-2 rounded-full transition-all duration-500" style="width: <?php echo ($step / 4) * 100; ?>%"></div>
            </div>
        </div>

        <?php if ($step == 1): ?>
            <!-- Step 1: Welcome and Requirements -->
            <div class="space-y-6">
                <h2 class="text-2xl font-bold text-white mb-4">Welcome to DocEase Setup</h2>
                
                <div class="bg-blue-500 bg-opacity-20 border border-blue-500 text-blue-100 px-4 py-3 rounded-lg">
                    <h3 class="font-semibold mb-2">System Requirements Check</h3>
                    <div class="space-y-2 text-sm">
                        <div class="flex items-center justify-between">
                            <span>PHP Version (7.4+)</span>
                            <span class="<?php echo version_compare(PHP_VERSION, '7.4.0', '>=') ? 'text-green-400' : 'text-red-400'; ?>">
                                <i class="fas <?php echo version_compare(PHP_VERSION, '7.4.0', '>=') ? 'fa-check' : 'fa-times'; ?>"></i>
                                <?php echo PHP_VERSION; ?>
                            </span>
                        </div>
                        <div class="flex items-center justify-between">
                            <span>PDO MySQL Extension</span>
                            <span class="<?php echo extension_loaded('pdo_mysql') ? 'text-green-400' : 'text-red-400'; ?>">
                                <i class="fas <?php echo extension_loaded('pdo_mysql') ? 'fa-check' : 'fa-times'; ?>"></i>
                                <?php echo extension_loaded('pdo_mysql') ? 'Available' : 'Missing'; ?>
                            </span>
                        </div>
                        <div class="flex items-center justify-between">
                            <span>File Upload Support</span>
                            <span class="<?php echo ini_get('file_uploads') ? 'text-green-400' : 'text-red-400'; ?>">
                                <i class="fas <?php echo ini_get('file_uploads') ? 'fa-check' : 'fa-times'; ?>"></i>
                                <?php echo ini_get('file_uploads') ? 'Enabled' : 'Disabled'; ?>
                            </span>
                        </div>
                        <div class="flex items-center justify-between">
                            <span>Directory Writable</span>
                            <span class="<?php echo is_writable('.') ? 'text-green-400' : 'text-red-400'; ?>">
                                <i class="fas <?php echo is_writable('.') ? 'fa-check' : 'fa-times'; ?>"></i>
                                <?php echo is_writable('.') ? 'Yes' : 'No'; ?>
                            </span>
                        </div>
                    </div>
                </div>

                <form method="POST" class="space-y-6">
                    <button type="submit" name="test_connection" class="btn-primary w-full">
                        <i class="fas fa-arrow-right mr-2"></i>Continue to Database Setup
                    </button>
                </form>
            </div>

        <?php elseif ($step == 2): ?>
            <!-- Step 2: Database Configuration -->
            <div class="space-y-6">
                <h2 class="text-2xl font-bold text-white mb-4">Database Configuration</h2>
                
                <?php
                if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['test_connection'])) {
                    $host = $_POST['host'] ?? 'localhost';
                    $username = $_POST['username'] ?? 'root';
                    $password = $_POST['password'] ?? '';
                    $database = $_POST['database'] ?? 'doc_ease';
                    
                    try {
                        $test_conn = new PDO("mysql:host=$host", $username, $password);
                        $test_conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                        
                        // Check if database exists
                        $stmt = $test_conn->query("SHOW DATABASES LIKE '$database'");
                        $db_exists = $stmt->rowCount() > 0;
                        
                        $success[] = 'Database connection successful!';
                        if (!$db_exists) {
                            $errors[] = "Database '$database' does not exist. Please create it first or use an existing database.";
                        } else {
                            // Check if required tables exist
                            $test_conn->exec("USE $database");
                            $tables_check = $test_conn->query("SHOW TABLES LIKE 'students'");
                            $students_exists = $tables_check->rowCount() > 0;
                            
                            $tables_check = $test_conn->query("SHOW TABLES LIKE 'uploaded_files'");
                            $files_exists = $tables_check->rowCount() > 0;
                            
                            if ($students_exists && $files_exists) {
                                $success[] = "Required tables 'students' and 'uploaded_files' found in database!";
                                
                                // Check if there are existing students
                                $student_count = $test_conn->query("SELECT COUNT(*) FROM students")->fetchColumn();
                                $success[] = "Found $student_count existing students in the database.";
                                
                                // Verify column structure
                                try {
                                    $test_conn->query("SELECT StudentNo FROM students LIMIT 1");
                                    $success[] = "Database column structure verified (StudentNo column found).";
                                } catch (PDOException $e) {
                                    $errors[] = "Column structure issue: " . $e->getMessage();
                                }
                            } else {
                                $missing_tables = [];
                                if (!$students_exists) $missing_tables[] = 'students';
                                if (!$files_exists) $missing_tables[] = 'uploaded_files';
                                $errors[] = "Missing required tables: " . implode(', ', $missing_tables);
                            }
                        }
                        
                        // Store connection details in session for next step
                        session_start();
                        $_SESSION['db_config'] = [
                            'host' => $host,
                            'username' => $username,
                            'password' => $password,
                            'database' => $database
                        ];
                        
                    } catch (PDOException $e) {
                        $errors[] = 'Database connection failed: ' . $e->getMessage();
                    }
                } else {
                    // Default values
                    $host = 'localhost';
                    $username = 'root';
                    $password = '';
                    $database = 'doc_ease';
                }
                ?>

                <?php if (!empty($errors)): ?>
                    <div class="bg-red-500 bg-opacity-20 border border-red-500 text-red-100 px-4 py-3 rounded-lg">
                        <?php foreach ($errors as $error): ?>
                            <div class="flex items-center mb-1">
                                <i class="fas fa-exclamation-circle mr-2"></i>
                                <?php echo htmlspecialchars($error); ?>
                            </div>
                        <?php endforeach; ?>
                    </div>
                <?php endif; ?>

                <?php if (!empty($success)): ?>
                    <div class="bg-green-500 bg-opacity-20 border border-green-500 text-green-100 px-4 py-3 rounded-lg">
                        <?php foreach ($success as $msg): ?>
                            <div class="flex items-center mb-1">
                                <i class="fas fa-check-circle mr-2"></i>
                                <?php echo htmlspecialchars($msg); ?>
                            </div>
                        <?php endforeach; ?>
                    </div>
                <?php endif; ?>

                <form method="POST" class="space-y-4">
                    <div>
                        <label class="block text-sm font-medium text-gray-200 mb-2">Database Host</label>
                        <input type="text" name="host" value="<?php echo htmlspecialchars($host); ?>" class="form-input w-full text-gray-800" required>
                    </div>
                    
                    <div>
                        <label class="block text-sm font-medium text-gray-200 mb-2">Username</label>
                        <input type="text" name="username" value="<?php echo htmlspecialchars($username); ?>" class="form-input w-full text-gray-800" required>
                    </div>
                    
                    <div>
                        <label class="block text-sm font-medium text-gray-200 mb-2">Password</label>
                        <input type="password" name="password" value="<?php echo htmlspecialchars($password); ?>" class="form-input w-full text-gray-800">
                    </div>
                    
                    <div>
                        <label class="block text-sm font-medium text-gray-200 mb-2">Database Name</label>
                        <input type="text" name="database" value="<?php echo htmlspecialchars($database); ?>" class="form-input w-full text-gray-800" required>
                    </div>

                    <div class="flex space-x-4">
                        <button type="submit" name="test_connection" class="flex-1 bg-blue-600 text-white py-2 px-4 rounded-lg hover:bg-blue-700 transition-colors">
                            <i class="fas fa-database mr-2"></i>Test Connection
                        </button>
                        
                        <?php if (!empty($success)): ?>
                            <button type="submit" name="install_database" class="flex-1 btn-primary">
                                <i class="fas fa-arrow-right mr-2"></i>Connect to Database
                            </button>
                        <?php endif; ?>
                    </div>
                </form>
            </div>

        <?php elseif ($step == 3): ?>
            <!-- Step 3: Database Verification -->
            <div class="space-y-6">
                <h2 class="text-2xl font-bold text-white mb-4">Verifying Database Connection</h2>
                
                <?php
                session_start();
                if (isset($_SESSION['db_config'])) {
                    $config = $_SESSION['db_config'];
                    
                    try {
                        // Connect to existing database
                        $pdo = new PDO("mysql:host={$config['host']};dbname={$config['database']}", $config['username'], $config['password']);
                        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                        
                        // Verify connection to existing database
                        $success[] = 'Successfully connected to existing doc_ease database!';
                        
                        // Check existing data
                        $student_count = $pdo->query("SELECT COUNT(*) FROM students")->fetchColumn();
                        $file_count = $pdo->query("SELECT COUNT(*) FROM uploaded_files")->fetchColumn();
                        
                        $success[] = "Database contains $student_count students and $file_count uploaded files.";
                        
                        // Update database config file with the existing database settings
                        $config_content = "<?php
class Database {
    private \$host = '{$config['host']}';
    private \$db_name = '{$config['database']}';
    private \$username = '{$config['username']}';
    private \$password = '{$config['password']}';
    private \$conn;

    public function getConnection() {
        \$this->conn = null;
        try {
            \$this->conn = new PDO(
                \"mysql:host=\" . \$this->host . \";dbname=\" . \$this->db_name,
                \$this->username,
                \$this->password
            );
            \$this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            \$this->conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
        } catch(PDOException \$exception) {
            echo \"Connection error: \" . \$exception->getMessage();
        }
        return \$this->conn;
    }
}
?>";
                        
                        file_put_contents('config/database.php', $config_content);
                        $success[] = 'Database configuration updated to use existing database!';
                        
                    } catch (PDOException $e) {
                        $errors[] = 'Database installation failed: ' . $e->getMessage();
                    }
                } else {
                    $errors[] = 'Database configuration not found. Please go back to step 2.';
                }
                ?>

                <?php if (!empty($errors)): ?>
                    <div class="bg-red-500 bg-opacity-20 border border-red-500 text-red-100 px-4 py-3 rounded-lg">
                        <?php foreach ($errors as $error): ?>
                            <div class="flex items-center mb-1">
                                <i class="fas fa-exclamation-circle mr-2"></i>
                                <?php echo htmlspecialchars($error); ?>
                            </div>
                        <?php endforeach; ?>
                    </div>
                <?php endif; ?>

                <?php if (!empty($success)): ?>
                    <div class="bg-green-500 bg-opacity-20 border border-green-500 text-green-100 px-4 py-3 rounded-lg">
                        <?php foreach ($success as $msg): ?>
                            <div class="flex items-center mb-1">
                                <i class="fas fa-check-circle mr-2"></i>
                                <?php echo htmlspecialchars($msg); ?>
                            </div>
                        <?php endforeach; ?>
                    </div>

                    <form method="POST">
                        <button type="submit" name="complete_setup" class="btn-primary w-full">
                            <i class="fas fa-arrow-right mr-2"></i>Complete Setup
                        </button>
                    </form>
                <?php else: ?>
                    <a href="?step=2" class="btn-primary w-full text-center block">
                        <i class="fas fa-arrow-left mr-2"></i>Back to Database Configuration
                    </a>
                <?php endif; ?>
            </div>

        <?php elseif ($step == 4): ?>
            <!-- Step 4: Final Setup -->
            <div class="space-y-6">
                <h2 class="text-2xl font-bold text-white mb-4">Final Setup</h2>
                
                <?php
                // Create uploads directory
                $uploads_dir = 'uploads';
                if (!is_dir($uploads_dir)) {
                    if (mkdir($uploads_dir, 0755, true)) {
                        $success[] = 'Uploads directory created successfully!';
                    } else {
                        $errors[] = 'Failed to create uploads directory. Please create it manually.';
                    }
                } else {
                    $success[] = 'Uploads directory already exists!';
                }

                // Create installation lock file
                if (file_put_contents('config/installed.lock', date('Y-m-d H:i:s'))) {
                    $success[] = 'Installation lock file created!';
                } else {
                    $errors[] = 'Failed to create installation lock file.';
                }

                // Clear session
                session_start();
                unset($_SESSION['db_config']);
                ?>

                <?php if (!empty($success)): ?>
                    <div class="bg-green-500 bg-opacity-20 border border-green-500 text-green-100 px-4 py-3 rounded-lg">
                        <?php foreach ($success as $msg): ?>
                            <div class="flex items-center mb-1">
                                <i class="fas fa-check-circle mr-2"></i>
                                <?php echo htmlspecialchars($msg); ?>
                            </div>
                        <?php endforeach; ?>
                    </div>
                <?php endif; ?>

                <div class="bg-blue-500 bg-opacity-20 border border-blue-500 text-blue-100 px-4 py-3 rounded-lg">
                    <h3 class="font-semibold mb-2">🎉 Setup Complete!</h3>
                    <div class="text-sm space-y-2">
                        <p><strong>Student Login:</strong> Use existing student numbers from your database</p>
                        <p><strong>Admin Login:</strong> Username: admin, Password: admin123</p>
                        <p><strong>Note:</strong> The system is now connected to your existing doc_ease database</p>
                    </div>
                </div>

                <div class="flex space-x-4">
                    <a href="login.php" class="flex-1 btn-primary text-center">
                        <i class="fas fa-user mr-2"></i>Student Login
                    </a>
                    <a href="admin/login.php" class="flex-1 bg-red-600 text-white py-2 px-4 rounded-lg hover:bg-red-700 transition-colors text-center">
                        <i class="fas fa-user-shield mr-2"></i>Admin Login
                    </a>
                </div>
            </div>
        <?php endif; ?>
    </div>
</div>

<?php include 'includes/footer.php'; ?>
