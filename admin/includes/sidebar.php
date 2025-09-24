<?php
// Admin Sidebar Component
$current_page = basename($_SERVER['PHP_SELF']);
$nav_items = [
    'dashboard.php' => ['icon' => 'fas fa-tachometer-alt', 'text' => 'Dashboard'],
    'files.php' => ['icon' => 'fas fa-file', 'text' => 'Files'],
    'students.php' => ['icon' => 'fas fa-users', 'text' => 'Students'],
    'manage_admins.php' => ['icon' => 'fas fa-user-shield', 'text' => 'Manage Admins'],
    'test_icons.php' => ['icon' => 'fas fa-bug', 'text' => 'Test Icons']
];
?>

<style>
/* Inline CSS to ensure sidebar styling works immediately */
#sidebar .nav-item {
    display: flex !important;
    align-items: center !important;
    padding: 12px 20px !important;
    color: #ffffff !important;
    text-decoration: none !important;
    border-radius: 8px !important;
    transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1) !important;
    font-size: 0.85rem !important;
    font-weight: 600 !important;
    margin: 4px 8px !important;
    position: relative !important;
    width: calc(100% - 16px) !important;
    box-sizing: border-box !important;
    min-height: 40px !important;
    background: rgba(255, 255, 255, 0.05) !important;
    backdrop-filter: blur(10px) !important;
    border: 1px solid rgba(255, 255, 255, 0.1) !important;
}

#sidebar .nav-item:hover {
    background: rgba(255, 255, 255, 0.15) !important;
    color: #ffffff !important;
    transform: translateX(8px) scale(1.02) !important;
    box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15) !important;
    border-color: rgba(255, 255, 255, 0.2) !important;
}

#sidebar .nav-item.active {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%) !important;
    color: #ffffff !important;
    box-shadow: 0 8px 25px rgba(102, 126, 234, 0.4) !important;
    transform: translateX(8px) !important;
    border-color: rgba(255, 255, 255, 0.3) !important;
}

#sidebar .nav-item.active::before {
    content: '' !important;
    position: absolute !important;
    left: -8px !important;
    top: 50% !important;
    transform: translateY(-50%) !important;
    width: 3px !important;
    height: 24px !important;
    background: linear-gradient(180deg, #667eea 0%, #764ba2 100%) !important;
    border-radius: 0 3px 3px 0 !important;
    box-shadow: 0 2px 8px rgba(102, 126, 234, 0.3) !important;
}

#sidebar .nav-item i {
    display: inline-block !important;
    width: 20px !important;
    text-align: center !important;
    font-size: 0.9rem !important;
    margin-right: 12px !important;
    flex-shrink: 0 !important;
    color: #ffffff !important;
    opacity: 0.9 !important;
}

#sidebar .nav-item.active i {
    opacity: 1 !important;
    transform: scale(1.05) !important;
}

#sidebar .nav-item span {
    display: inline-block !important;
    color: #ffffff !important;
    flex: 1 !important;
    font-weight: 600 !important;
    letter-spacing: 0.025em !important;
    font-size: 0.85rem !important;
}

#sidebar .nav-item.active span {
    font-weight: 700 !important;
}

#sidebar nav {
    display: flex !important;
    flex-direction: column !important;
    gap: 6px !important;
    padding: 0 8px !important;
}
</style>

<!-- Mobile Menu Toggle -->
<button class="mobile-menu-toggle" onclick="toggleSidebar()">
    <i class="fas fa-bars"></i>
</button>

<!-- Sidebar Overlay -->
<div class="sidebar-overlay" id="sidebarOverlay" onclick="closeSidebar()"></div>

<!-- Enhanced Sidebar -->
<div class="w-64 bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 border-r border-slate-700/50 h-screen fixed left-0 top-0 z-50 flex flex-col sidebar-mobile shadow-2xl" id="sidebar">
    <!-- Logo/Header Section -->
    <div class="p-8 border-b border-slate-700/50 bg-gradient-to-r from-slate-800/50 to-slate-700/50 backdrop-blur-sm">
        <div class="flex items-center space-x-4">
            <div class="w-12 h-12 bg-gradient-to-br from-red-500 to-red-600 rounded-xl flex items-center justify-center shadow-lg">
                <i class="fas fa-user-shield text-white text-xl"></i>
            </div>
            <div>
                <h1 class="text-xl font-bold text-white tracking-wide">Admin Panel</h1>
                <p class="text-sm text-slate-300 font-medium">DocEase Administration</p>
            </div>
        </div>
    </div>
    
    <!-- Navigation Menu -->
    <div class="flex-1 p-4">
        <nav class="space-y-2">
            <?php foreach ($nav_items as $page => $item): 
                $is_active = ($current_page === $page) ? 'active' : '';
            ?>
            <a href="<?php echo $page; ?>" class="nav-item <?php echo $is_active; ?>">
                <i class="<?php echo $item['icon']; ?>"></i>
                <span><?php echo $item['text']; ?></span>
            </a>
            <?php endforeach; ?>
        </nav>
    </div>
    
    <!-- User Info Section -->
    <div class="p-6 border-t border-slate-700/50 bg-gradient-to-r from-slate-800/50 to-slate-700/50 backdrop-blur-sm">
        <div class="flex items-center space-x-4 mb-4">
            <div class="w-10 h-10 bg-gradient-to-br from-slate-600 to-slate-700 rounded-lg flex items-center justify-center shadow-md">
                <i class="fas fa-user-shield text-white text-sm"></i>
            </div>
            <div class="flex-1 min-w-0">
                <p class="text-white font-semibold text-sm truncate"><?php echo htmlspecialchars($_SESSION['admin_name']); ?></p>
                <p class="text-xs text-slate-300 font-medium">Administrator</p>
            </div>
        </div>
        <a href="logout.php" class="flex items-center space-x-3 text-white hover:text-red-300 transition-all duration-300 text-sm py-3 px-4 rounded-lg hover:bg-red-500/10 border border-transparent hover:border-red-500/20">
            <i class="fas fa-sign-out-alt"></i>
            <span class="font-medium">Logout</span>
        </a>
    </div>
</div>

<script>
// Mobile sidebar functionality
function toggleSidebar() {
    const sidebar = document.getElementById('sidebar');
    const overlay = document.getElementById('sidebarOverlay');
    
    if (sidebar.classList.contains('open')) {
        closeSidebar();
    } else {
        sidebar.classList.add('open');
        overlay.classList.add('open');
        document.body.style.overflow = 'hidden';
    }
}

function closeSidebar() {
    const sidebar = document.getElementById('sidebar');
    const overlay = document.getElementById('sidebarOverlay');
    
    sidebar.classList.remove('open');
    overlay.classList.remove('open');
    document.body.style.overflow = 'auto';
}

// Close sidebar when clicking on nav items on mobile
document.addEventListener('DOMContentLoaded', function() {
    const navItems = document.querySelectorAll('.nav-item');
    
    navItems.forEach(item => {
        item.addEventListener('click', function() {
            if (window.innerWidth <= 768) {
                closeSidebar();
            }
        });
    });
    
    // Close sidebar on window resize if desktop
    window.addEventListener('resize', function() {
        if (window.innerWidth > 768) {
            closeSidebar();
        }
    });
    
    // Close sidebar when clicking outside on mobile
    document.addEventListener('click', function(e) {
        const sidebar = document.getElementById('sidebar');
        const toggle = document.querySelector('.mobile-menu-toggle');
        
        if (window.innerWidth <= 768 && 
            sidebar.classList.contains('open') && 
            !sidebar.contains(e.target) && 
            !toggle.contains(e.target)) {
            closeSidebar();
        }
    });
});

// Debug script to verify sidebar styling
document.addEventListener('DOMContentLoaded', function() {
    console.log('Sidebar loaded, checking nav items...');
    const navItems = document.querySelectorAll('#sidebar .nav-item');
    console.log('Found', navItems.length, 'nav items');
    
    navItems.forEach((item, index) => {
        console.log('Nav item', index + 1, ':', item.textContent.trim());
        const computedStyle = window.getComputedStyle(item);
        console.log('Background:', computedStyle.backgroundColor);
        console.log('Color:', computedStyle.color);
        console.log('Padding:', computedStyle.padding);
    });
});
</script>
