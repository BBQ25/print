<?php
/**
 * Network Information Functions for Institutional Tracking
 * These functions help track student access for security and monitoring purposes
 */

function getClientIP() {
    $ip_keys = ['HTTP_CLIENT_IP', 'HTTP_X_FORWARDED_FOR', 'REMOTE_ADDR'];
    foreach ($ip_keys as $key) {
        if (array_key_exists($key, $_SERVER) === true) {
            foreach (explode(',', $_SERVER[$key]) as $ip) {
                $ip = trim($ip);
                if (filter_var($ip, FILTER_VALIDATE_IP, FILTER_FLAG_NO_PRIV_RANGE | FILTER_FLAG_NO_RES_RANGE) !== false) {
                    return $ip;
                }
            }
        }
    }
    return $_SERVER['REMOTE_ADDR'] ?? 'Unknown';
}

function getNetworkInfo() {
    return [
        'ip_address' => getClientIP(),
        'user_agent' => $_SERVER['HTTP_USER_AGENT'] ?? 'Unknown',
        'accept_language' => $_SERVER['HTTP_ACCEPT_LANGUAGE'] ?? 'Unknown',
        'referer' => $_SERVER['HTTP_REFERER'] ?? 'Direct Access',
        'server_name' => $_SERVER['SERVER_NAME'] ?? 'Unknown',
        'server_port' => $_SERVER['SERVER_PORT'] ?? 'Unknown',
        'request_method' => $_SERVER['REQUEST_METHOD'] ?? 'Unknown',
        'protocol' => isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? 'HTTPS' : 'HTTP'
    ];
}

function getBrowserInfo($user_agent) {
    $browsers = [
        'Chrome' => '/Chrome\/([0-9.]+)/',
        'Firefox' => '/Firefox\/([0-9.]+)/',
        'Safari' => '/Safari\/([0-9.]+)/',
        'Edge' => '/Edge\/([0-9.]+)/',
        'Internet Explorer' => '/MSIE ([0-9.]+)/',
        'Opera' => '/Opera\/([0-9.]+)/'
    ];
    
    foreach ($browsers as $browser => $pattern) {
        if (preg_match($pattern, $user_agent, $matches)) {
            return $browser . ' ' . $matches[1];
        }
    }
    
    return 'Unknown Browser';
}

function getOperatingSystem($user_agent) {
    $os_array = [
        'Windows 11' => '/Windows NT 10.0.*Build 22000/',
        'Windows 10' => '/Windows NT 10.0/',
        'Windows 8.1' => '/Windows NT 6.3/',
        'Windows 8' => '/Windows NT 6.2/',
        'Windows 7' => '/Windows NT 6.1/',
        'macOS' => '/Macintosh.*Mac OS X/',
        'Linux' => '/Linux/',
        'Android' => '/Android/',
        'iOS' => '/(iPhone|iPad)/',
    ];
    
    foreach ($os_array as $os => $pattern) {
        if (preg_match($pattern, $user_agent)) {
            return $os;
        }
    }
    
    return 'Unknown OS';
}

function logAccess($student_id, $action = 'login') {
    // This function can be used to log access attempts to a database table
    // For institutional tracking and security auditing
    
    $network_info = getNetworkInfo();
    $timestamp = date('Y-m-d H:i:s');
    
    // You can implement database logging here
    // Example: INSERT INTO access_logs (student_id, ip_address, action, timestamp, user_agent)
    
    return [
        'student_id' => $student_id,
        'action' => $action,
        'timestamp' => $timestamp,
        'ip_address' => $network_info['ip_address'],
        'user_agent' => $network_info['user_agent'],
        'browser' => getBrowserInfo($network_info['user_agent']),
        'os' => getOperatingSystem($network_info['user_agent']),
        'protocol' => $network_info['protocol']
    ];
}

function getLocationFromIP($ip_address) {
    // Using a free IP geolocation service
    // For institutional use, you might want to use a more reliable paid service
    
    try {
        $url = "http://ip-api.com/json/{$ip_address}";
        $response = @file_get_contents($url);
        
        if ($response !== false) {
            $data = json_decode($response, true);
            if ($data && $data['status'] === 'success') {
                return [
                    'country' => $data['country'] ?? 'Unknown',
                    'region' => $data['regionName'] ?? 'Unknown',
                    'city' => $data['city'] ?? 'Unknown',
                    'latitude' => $data['lat'] ?? 0,
                    'longitude' => $data['lon'] ?? 0,
                    'isp' => $data['isp'] ?? 'Unknown',
                    'timezone' => $data['timezone'] ?? 'Unknown'
                ];
            }
        }
    } catch (Exception $e) {
        // Fallback if service is unavailable
    }
    
    return [
        'country' => 'Unknown',
        'region' => 'Unknown', 
        'city' => 'Unknown',
        'latitude' => 0,
        'longitude' => 0,
        'isp' => 'Unknown',
        'timezone' => 'Unknown'
    ];
}
?>

