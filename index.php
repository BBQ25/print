<?php
// Check if system is installed
if (!file_exists('config/installed.lock')) {
    header('Location: setup.php');
    exit();
}

// Redirect to login page
header('Location: login.php');
exit();
?>
