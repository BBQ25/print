<?php
session_start();

function isLoggedIn() {
    return isset($_SESSION['student_id']) || isset($_SESSION['admin_id']);
}

function isStudent() {
    return isset($_SESSION['student_id']);
}

function isAdmin() {
    return isset($_SESSION['admin_id']);
}

function requireLogin() {
    if (!isLoggedIn()) {
        header('Location: login.php');
        exit();
    }
}

function requireStudent() {
    if (!isStudent()) {
        header('Location: login.php');
        exit();
    }
}

function requireAdmin() {
    if (!isAdmin()) {
        header('Location: admin/login.php');
        exit();
    }
}
?>


