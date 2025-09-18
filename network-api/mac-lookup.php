<?php
/**
 * Institutional Network MAC Address Lookup API
 * This endpoint would typically integrate with your network infrastructure
 * to provide MAC address information for institutional tracking
 */

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: Content-Type');

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    echo json_encode(['error' => 'Method not allowed']);
    exit;
}

$input = json_decode(file_get_contents('php://input'), true);
$ip_address = $input['ip'] ?? '';

if (empty($ip_address)) {
    http_response_code(400);
    echo json_encode(['error' => 'IP address required']);
    exit;
}

// Simulate institutional network lookup
// In a real environment, this would query your network infrastructure
// Examples: DHCP server, switch ARP tables, network management system

// Check if IP is in institutional network range (expanded for local networks)
$institutional_networks = [
    '192.168.0.0/16',    // All 192.168.x.x networks (most common local networks)
    '10.0.0.0/8',        // All 10.x.x.x networks (large institutional networks)
    '172.16.0.0/12',     // All 172.16-31.x.x networks (medium institutional networks)
    '127.0.0.0/8'        // Localhost range
];

function isIPInRange($ip, $cidr) {
    list($subnet, $mask) = explode('/', $cidr);
    $ip_long = ip2long($ip);
    $subnet_long = ip2long($subnet);
    $mask_long = ~((1 << (32 - $mask)) - 1);
    
    return ($ip_long & $mask_long) === ($subnet_long & $mask_long);
}

$is_institutional = false;
foreach ($institutional_networks as $network) {
    if (isIPInRange($ip_address, $network)) {
        $is_institutional = true;
        break;
    }
}

if ($is_institutional) {
    // Check if this is a known development IP first
    if (isset($development_ips[$ip_address])) {
        $dev_info = $development_ips[$ip_address];
        $mac_address = $dev_info['mac'];
        $device_type = $dev_info['device'];
        $switch_port = $dev_info['switch_port'];
    } else {
        // Generate MAC address for institutional tracking
        // In a real environment, this would query your DHCP server or network switches
        
        $ip_parts = explode('.', $ip_address);
        
        // Generate a realistic MAC address based on IP for consistency
        // Using common vendor prefixes for institutional equipment
        $vendor_prefixes = [
            '00:1B:44',  // Cisco
            '00:0C:29',  // VMware
            '00:50:56',  // VMware ESX
            '00:1A:A0',  // Dell
            '00:15:5D',  // Microsoft
            '00:23:24'   // HP
        ];
        
        $vendor = $vendor_prefixes[array_sum($ip_parts) % count($vendor_prefixes)];
        $mac_address = sprintf('%s:%02X:%02X:%02X', 
            $vendor,
            $ip_parts[1] ?? 0, 
            $ip_parts[2] ?? 0, 
            $ip_parts[3] ?? 0
        );
        
        $device_type = 'Institutional Device';
        $switch_port = 'Switch-' . rand(1, 48) . '/Port-' . rand(1, 24);
    }
    
    // Additional network information that institutions might track
    $network_info = [
        'mac_address' => $mac_address,
        'switch_port' => $switch_port,
        'device_type' => $device_type ?? 'Institutional Device',
        'vlan' => rand(100, 200),
        'network_name' => 'Campus-WiFi-' . chr(65 + rand(0, 3)), // A, B, C, D
        'bandwidth_limit' => rand(50, 1000) . ' Mbps',
        'last_seen' => date('Y-m-d H:i:s')
    ];
    
    echo json_encode([
        'success' => true,
        'mac_address' => $mac_address,
        'network_info' => $network_info,
        'institutional_network' => true
    ]);
    
} else {
    // External network - MAC address not available
    echo json_encode([
        'success' => false,
        'error' => 'External network - MAC address not accessible',
        'institutional_network' => false,
        'suggestion' => 'Connect to institutional network for full tracking'
    ]);
}
?>
