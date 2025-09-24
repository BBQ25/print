<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo isset($page_title) ? $page_title . ' - ' : ''; ?>DocEase File Management</title>
    
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="<?php echo (strpos($_SERVER['REQUEST_URI'], '/admin/') !== false) ? '../assets/css/style.css' : 'assets/css/style.css'; ?>">
    
    <!-- Font Awesome - Multiple CDN fallbacks -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" 
          integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" 
          crossorigin="anonymous" 
          referrerpolicy="no-referrer">
    
    <!-- Font Awesome Fallback CDN -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.5.1/css/all.css" 
          crossorigin="anonymous" 
          onerror="this.onerror=null;this.href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css';">
    
    <!-- Local Font Awesome Fallback -->
    <style>
        /* Immediate fallback for Font Awesome icons */
        .fas, .far, .fab, .fa {
            font-family: "Font Awesome 6 Free", "Font Awesome 6 Pro", "Font Awesome 6 Brands", "FontAwesome", sans-serif !important;
            font-weight: 900;
            -webkit-font-smoothing: antialiased;
            display: inline-block;
            font-style: normal;
            font-variant: normal;
            text-rendering: auto;
            line-height: 1;
        }
        
        /* Force icon display with unicode fallbacks */
        .fa-user-shield:before { content: "\f505" !important; }
        .fa-sign-out-alt:before { content: "\f2f5" !important; }
        .fa-check-circle:before { content: "\f058" !important; }
        .fa-exclamation-circle:before { content: "\f06a" !important; }
        .fa-users:before { content: "\f0c0" !important; }
        .fa-file:before { content: "\f15b" !important; }
        .fa-chart-line:before { content: "\f201" !important; }
        .fa-clock:before { content: "\f017" !important; }
        .fa-inbox:before { content: "\f01c" !important; }
        .fa-plus:before { content: "\f067" !important; }
        .fa-eye:before { content: "\f06e" !important; }
        .fa-edit:before { content: "\f044" !important; }
        .fa-times:before { content: "\f00d" !important; }
        .fa-user:before { content: "\f007" !important; }
        .fa-folder-open:before { content: "\f07c" !important; }
        .fa-download:before { content: "\f019" !important; }
        .fa-trash:before { content: "\f1f8" !important; }
        .fa-arrow-left:before { content: "\f060" !important; }
        .fa-user-edit:before { content: "\f4ff" !important; }
        .fa-save:before { content: "\f0c7" !important; }
        .fa-lock:before { content: "\f023" !important; }
        .fa-sign-in-alt:before { content: "\f2f6" !important; }
        .fa-bug:before { content: "\f188" !important; }
        .fa-tachometer-alt:before { content: "\f3fd" !important; }
        .fa-angle-left:before { content: "\f104" !important; }
        .fa-angle-right:before { content: "\f105" !important; }
        .fa-angle-double-left:before { content: "\f100" !important; }
        .fa-angle-double-right:before { content: "\f101" !important; }
        .fa-arrow-up:before { content: "\f062" !important; }
        .fa-upload:before { content: "\f093" !important; }
        .fa-percentage:before { content: "\f295" !important; }
        .fa-bars:before { content: "\f0c9" !important; }
    </style>
    
    <!-- Leaflet CSS for Maps -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" 
          integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY=" 
          crossorigin=""/>
    
    <!-- Leaflet JS for Maps -->
    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js" 
            integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo=" 
            crossorigin=""></script>
    
    <!-- Font Awesome Fallback Script -->
    <script>
        // Check if Font Awesome loaded properly
        document.addEventListener('DOMContentLoaded', function() {
            // Wait a bit for fonts to load
            setTimeout(function() {
                const testIcon = document.createElement('i');
                testIcon.className = 'fas fa-check';
                testIcon.style.visibility = 'hidden';
                testIcon.style.position = 'absolute';
                document.body.appendChild(testIcon);
                
                const computedStyle = window.getComputedStyle(testIcon, ':before');
                const fontFamily = computedStyle.getPropertyValue('font-family');
                
                if (!fontFamily.includes('Font Awesome')) {
                    console.warn('Font Awesome not loaded properly, applying fallbacks');
                    document.body.classList.add('fa-fallback');
                }
                
                document.body.removeChild(testIcon);
            }, 1000);
        });
    </script>
    
    <!-- Custom Tailwind Config -->
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    fontFamily: {
                        'figtree': ['Figtree', 'sans-serif'],
                    },
                    colors: {
                        primary: {
                            50: '#f0f4ff',
                            100: '#e0e7ff',
                            500: '#667eea',
                            600: '#5a67d8',
                            700: '#4c51bf',
                        }
                    }
                }
            }
        }
    </script>
    
    <style>
        body {
            background: #f8fafc;
            min-height: 100vh;
            font-family: 'Figtree', sans-serif;
            position: relative;
            overflow-x: hidden;
        }
        
        /* Improved text readability */
        .text-white {
            text-shadow: 0 1px 3px rgba(0, 0, 0, 0.3);
        }
        
        /* Enhanced glass effect for better blending */
        .glass, .glass-card, .glass-dark {
            position: relative;
        }
        
        .glass::before, .glass-card::before, .glass-dark::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: inherit;
            border-radius: inherit;
            opacity: 0.6;
            z-index: -1;
        }
        
        /* Force Figtree font on all elements */
        * {
            font-family: 'Figtree', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif !important;
        }
        
        /* Ensure admin pages use Figtree */
        body, html, div, span, p, h1, h2, h3, h4, h5, h6, a, button, input, textarea, select, label {
            font-family: 'Figtree', sans-serif !important;
        }
    </style>
</head>
<body class="font-figtree">
