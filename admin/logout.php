<?php
require_once '../config/session.php';

// Destroy all session data
session_destroy();

// Redirect to admin login page
header('Location: login.php');
exit();
?>

