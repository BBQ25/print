<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo isset($page_title) ? $page_title . ' - ' : ''; ?>DocEase File Management</title>
    
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Leaflet CSS for Maps -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" 
          integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY=" 
          crossorigin=""/>
    
    <!-- Leaflet JS for Maps -->
    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js" 
            integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo=" 
            crossorigin=""></script>
    
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
            background: 
                radial-gradient(circle at 20% 50%, rgba(83, 82, 237, 0.4) 0%, transparent 60%), /* saturated-sky */
                radial-gradient(circle at 80% 20%, rgba(112, 161, 255, 0.3) 0%, transparent 60%), /* french-sky-blue */
                radial-gradient(circle at 40% 80%, rgba(55, 66, 250, 0.3) 0%, transparent 60%), /* bright-greek */
                linear-gradient(135deg, #5352ed 0%, #3742fa 50%, #70a1ff 100%); /* saturated-sky to bright-greek to french-sky-blue */
            min-height: 100vh;
            font-family: 'Figtree', sans-serif;
            position: relative;
            overflow-x: hidden;
        }
        
        body::before {
            content: '';
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: 
                radial-gradient(circle at 15% 25%, rgba(241, 242, 246, 0.1) 0%, transparent 50%), /* anti-flash-white */
                radial-gradient(circle at 85% 75%, rgba(223, 228, 234, 0.08) 0%, transparent 50%); /* city-lights */
            pointer-events: none;
            z-index: -1;
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
