<?php
require_once '../config/session.php';

$page_title = 'Icon Test';
include '../includes/header.php';
?>

<div class="min-h-screen bg-gray-50 p-8">
    <div class="max-w-4xl mx-auto">
        <h1 class="text-3xl font-bold text-gray-800 mb-8">Font Awesome Icon Test</h1>
        
        <div class="glass-card p-8">
            <h2 class="text-xl font-bold text-gray-800 mb-6">Admin Dashboard Icons</h2>
            
            <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
                <div class="text-center p-4 bg-gray-100 rounded-lg">
                    <i class="fas fa-user-shield text-3xl text-blue-600 mb-2"></i>
                    <p class="text-sm">fa-user-shield</p>
                    <p class="text-xs text-gray-500">\f505</p>
                </div>
                
                <div class="text-center p-4 bg-gray-100 rounded-lg">
                    <i class="fas fa-sign-out-alt text-3xl text-red-600 mb-2"></i>
                    <p class="text-sm">fa-sign-out-alt</p>
                    <p class="text-xs text-gray-500">\f2f5</p>
                </div>
                
                <div class="text-center p-4 bg-gray-100 rounded-lg">
                    <i class="fas fa-users text-3xl text-green-600 mb-2"></i>
                    <p class="text-sm">fa-users</p>
                    <p class="text-xs text-gray-500">\f0c0</p>
                </div>
                
                <div class="text-center p-4 bg-gray-100 rounded-lg">
                    <i class="fas fa-file text-3xl text-purple-600 mb-2"></i>
                    <p class="text-sm">fa-file</p>
                    <p class="text-xs text-gray-500">\f15b</p>
                </div>
                
                <div class="text-center p-4 bg-gray-100 rounded-lg">
                    <i class="fas fa-chart-line text-3xl text-orange-600 mb-2"></i>
                    <p class="text-sm">fa-chart-line</p>
                    <p class="text-xs text-gray-500">\f201</p>
                </div>
                
                <div class="text-center p-4 bg-gray-100 rounded-lg">
                    <i class="fas fa-clock text-3xl text-indigo-600 mb-2"></i>
                    <p class="text-sm">fa-clock</p>
                    <p class="text-xs text-gray-500">\f017</p>
                </div>
                
                <div class="text-center p-4 bg-gray-100 rounded-lg">
                    <i class="fas fa-plus text-3xl text-teal-600 mb-2"></i>
                    <p class="text-sm">fa-plus</p>
                    <p class="text-xs text-gray-500">\f067</p>
                </div>
                
                <div class="text-center p-4 bg-gray-100 rounded-lg">
                    <i class="fas fa-eye text-3xl text-pink-600 mb-2"></i>
                    <p class="text-sm">fa-eye</p>
                    <p class="text-xs text-gray-500">\f06e</p>
                </div>
            </div>
            
            <div class="mt-8">
                <h3 class="text-lg font-bold text-gray-800 mb-4">Status Check</h3>
                <div id="icon-status" class="p-4 bg-gray-100 rounded-lg">
                    <p>Checking Font Awesome loading status...</p>
                </div>
            </div>
        </div>
        
        <div class="mt-8">
            <a href="dashboard.php" class="btn-primary">
                <i class="fas fa-arrow-left mr-2"></i>Back to Dashboard
            </a>
        </div>
    </div>
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
    const statusDiv = document.getElementById('icon-status');
    
    // Test if Font Awesome is loaded
    const testIcon = document.createElement('i');
    testIcon.className = 'fas fa-check';
    testIcon.style.visibility = 'hidden';
    testIcon.style.position = 'absolute';
    document.body.appendChild(testIcon);
    
    const computedStyle = window.getComputedStyle(testIcon, ':before');
    const fontFamily = computedStyle.getPropertyValue('font-family');
    const content = computedStyle.getPropertyValue('content');
    
    document.body.removeChild(testIcon);
    
    if (fontFamily.includes('Font Awesome') || content !== 'none') {
        statusDiv.innerHTML = `
            <div class="flex items-center text-green-600">
                <i class="fas fa-check-circle mr-2"></i>
                <span>Font Awesome is loading correctly!</span>
            </div>
        `;
    } else {
        statusDiv.innerHTML = `
            <div class="flex items-center text-red-600">
                <i class="fas fa-exclamation-triangle mr-2"></i>
                <span>Font Awesome may not be loading. Using fallback icons.</span>
            </div>
        `;
    }
    
    // Additional info
    statusDiv.innerHTML += `
        <div class="mt-2 text-sm text-gray-600">
            <p><strong>Font Family:</strong> ${fontFamily}</p>
            <p><strong>Content:</strong> ${content}</p>
        </div>
    `;
});
</script>

<?php include '../includes/footer.php'; ?>
