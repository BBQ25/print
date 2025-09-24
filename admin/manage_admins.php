<?php
require_once '../config/database.php';
require_once '../config/session.php';

requireAdmin();

$page_title = 'Manage Administrators';
$success_message = '';
$error_message = '';

// Handle form submissions
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $action = $_POST['action'] ?? '';
    
    if ($action === 'add_admin') {
        $name = trim($_POST['name']);
        $password = trim($_POST['password']);
        $role = $_POST['role'] ?? 'staff';
        
        if (empty($name) || empty($password)) {
            $error_message = 'Name and password are required.';
        } else {
            $database = new Database();
            $db = $database->getConnection();
            
            try {
                // Check if password already exists
                $check_query = "SELECT id FROM admin_users WHERE password = :password";
                $check_stmt = $db->prepare($check_query);
                $check_stmt->bindParam(':password', $password);
                $check_stmt->execute();
                
                if ($check_stmt->rowCount() > 0) {
                    $error_message = 'This password is already in use. Please choose a different password.';
                } else {
                    // Insert new admin
                    $insert_query = "INSERT INTO admin_users (name, password, role, status) VALUES (:name, :password, :role, 'active')";
                    $insert_stmt = $db->prepare($insert_query);
                    $insert_stmt->bindParam(':name', $name);
                    $insert_stmt->bindParam(':password', $password);
                    $insert_stmt->bindParam(':role', $role);
                    
                    if ($insert_stmt->execute()) {
                        $success_message = 'Admin user added successfully!';
                    } else {
                        $error_message = 'Failed to add admin user.';
                    }
                }
            } catch (PDOException $e) {
                $error_message = 'Database error: ' . $e->getMessage();
            }
        }
    } elseif ($action === 'update_status') {
        $admin_id = $_POST['admin_id'];
        $status = $_POST['status'];
        
        $database = new Database();
        $db = $database->getConnection();
        
        try {
            $update_query = "UPDATE admin_users SET status = :status WHERE id = :id";
            $update_stmt = $db->prepare($update_query);
            $update_stmt->bindParam(':status', $status);
            $update_stmt->bindParam(':id', $admin_id);
            
            if ($update_stmt->execute()) {
                $success_message = 'Admin status updated successfully!';
            } else {
                $error_message = 'Failed to update admin status.';
            }
        } catch (PDOException $e) {
            $error_message = 'Database error: ' . $e->getMessage();
        }
    }
}

// Get all admin users
$database = new Database();
$db = $database->getConnection();

$query = "SELECT * FROM admin_users ORDER BY created_at DESC";
$stmt = $db->prepare($query);
$stmt->execute();
$admin_users = $stmt->fetchAll();

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
                    <h2 class="text-xl font-bold text-white">Manage Administrators</h2>
                    <p class="text-sm text-light">Add and manage admin users and staff</p>
                </div>
                <div class="flex items-center space-x-4">
                    <div class="text-right">
                        <p class="text-white font-semibold text-sm"><?php echo count($admin_users); ?> Users</p>
                        <p class="text-xs text-light">Total admins</p>
                    </div>
                </div>
            </div>
        </nav>

        <div class="p-6">
            <!-- Messages -->
            <?php if ($success_message): ?>
                <div class="mb-6 p-4 rounded-lg bg-green-100 border border-green-400 text-green-700">
                    <div class="flex items-center">
                        <i class="fas fa-check-circle mr-2"></i>
                        <?php echo htmlspecialchars($success_message); ?>
                    </div>
                </div>
            <?php endif; ?>

            <?php if ($error_message): ?>
                <div class="mb-6 p-4 rounded-lg bg-red-100 border border-red-400 text-red-700">
                    <div class="flex items-center">
                        <i class="fas fa-exclamation-circle mr-2"></i>
                        <?php echo htmlspecialchars($error_message); ?>
                    </div>
                </div>
            <?php endif; ?>

            <div class="grid grid-cols-1 xl:grid-cols-2 gap-8">
                <!-- Add New Admin -->
                <div class="glass-card p-6 hover-lift">
                    <h3 class="text-xl font-bold text-gray-800 mb-6 flex items-center">
                        <i class="fas fa-user-plus mr-3 text-primary"></i>
                        Add New Admin/Staff
                    </h3>
                    
                    <form method="POST" class="space-y-4">
                        <input type="hidden" name="action" value="add_admin">
                        
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-2">Name</label>
                            <input 
                                type="text" 
                                name="name" 
                                class="form-input w-full"
                                placeholder="Enter admin name"
                                required
                            >
                        </div>
                        
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-2">Password</label>
                            <input 
                                type="password" 
                                name="password" 
                                class="form-input w-full"
                                placeholder="Enter secure password"
                                required
                                minlength="6"
                            >
                            <p class="text-xs text-gray-500 mt-1">Minimum 6 characters</p>
                        </div>
                        
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-2">Role</label>
                            <select name="role" class="form-input w-full">
                                <option value="staff">Staff</option>
                                <option value="admin">Administrator</option>
                            </select>
                        </div>
                        
                        <button type="submit" class="btn-primary w-full">
                            <i class="fas fa-plus mr-2"></i>Add Admin User
                        </button>
                    </form>
                </div>

                <!-- Admin Users List -->
                <div class="glass-card p-6 hover-lift">
                    <h3 class="text-xl font-bold text-gray-800 mb-6 flex items-center">
                        <i class="fas fa-users mr-3 text-primary"></i>
                        Admin Users
                    </h3>
                    
                    <div class="space-y-4 max-h-96 overflow-y-auto">
                        <?php if (empty($admin_users)): ?>
                            <div class="text-center py-8">
                                <i class="fas fa-users text-4xl text-gray-300 mb-3"></i>
                                <p class="text-gray-500">No admin users found</p>
                            </div>
                        <?php else: ?>
                            <?php foreach ($admin_users as $admin): ?>
                                <div class="flex items-center justify-between p-4 bg-gray-50 rounded-lg">
                                    <div class="flex items-center space-x-3">
                                        <div class="w-10 h-10 rounded-full flex items-center justify-center" style="background-color: <?php echo $admin['role'] === 'admin' ? '#e74c3c' : '#3498db'; ?>;">
                                            <i class="fas fa-<?php echo $admin['role'] === 'admin' ? 'user-shield' : 'user'; ?> text-white"></i>
                                        </div>
                                        <div>
                                            <p class="font-semibold text-gray-800"><?php echo htmlspecialchars($admin['name']); ?></p>
                                            <p class="text-sm text-gray-600">
                                                <?php echo ucfirst($admin['role']); ?> • 
                                                <?php echo date('M d, Y', strtotime($admin['created_at'])); ?>
                                            </p>
                                        </div>
                                    </div>
                                    
                                    <div class="flex items-center space-x-2">
                                        <form method="POST" class="inline">
                                            <input type="hidden" name="action" value="update_status">
                                            <input type="hidden" name="admin_id" value="<?php echo $admin['id']; ?>">
                                            <select name="status" onchange="this.form.submit()" class="text-sm border rounded px-2 py-1" style="background-color: <?php echo $admin['status'] === 'active' ? '#d5f4e6' : '#fadbd8'; ?>; color: <?php echo $admin['status'] === 'active' ? '#27ae60' : '#e74c3c'; ?>;">
                                                <option value="active" <?php echo $admin['status'] === 'active' ? 'selected' : ''; ?>>Active</option>
                                                <option value="inactive" <?php echo $admin['status'] === 'inactive' ? 'selected' : ''; ?>>Inactive</option>
                                            </select>
                                        </form>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include '../includes/footer.php'; ?>
