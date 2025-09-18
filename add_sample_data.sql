-- Sample location data for demonstrating the Map card functionality
-- This adds sample device and upload data with location coordinates

-- Insert sample device with location data
INSERT INTO student_devices (
    StudentNo, device_id, device_name, device_type, operating_system,
    browser_name, browser_version, ip_address, mac_address, user_agent,
    location_latitude, location_longitude, location_address, timezone,
    first_seen, last_seen
) VALUES 
(
    '2021-001', 'demo_laptop_001', 'Development Laptop', 'laptop', 'Windows 10',
    'Chrome', '120.0', '192.168.127.208', 'F8:54:F6:BB:95:3E', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
    14.6507, 121.1029, 'University Belt, Manila, Philippines', 'Asia/Manila',
    DATE_SUB(NOW(), INTERVAL 7 DAY), NOW()
),
(
    '2021-001', 'demo_mobile_001', 'Mobile Phone', 'mobile', 'Android 13',
    'Chrome Mobile', '120.0', '192.168.127.209', '28:C6:3F:AF:8D:11', 'Mozilla/5.0 (Linux; Android 13; SM-G991B)',
    14.5995, 120.9842, 'Makati Central Business District, Makati City, Philippines', 'Asia/Manila',
    DATE_SUB(NOW(), INTERVAL 3 DAY), NOW()
),
(
    '2021-001', 'demo_home_001', 'Home Computer', 'desktop', 'Windows 11',
    'Edge', '119.0', '192.168.127.210', '00:1B:44:C8:01:64', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
    14.6760, 121.0437, 'Quezon City, Metro Manila, Philippines', 'Asia/Manila',
    DATE_SUB(NOW(), INTERVAL 1 DAY), NOW()
);

-- Insert sample uploaded files
INSERT INTO uploaded_files (
    StudentNo, original_name, file_name, file_path, file_size, file_type,
    upload_date, status
) VALUES
-- Files from laptop
('2021-001', 'Research_Paper_Draft.pdf', 'demo_research_001.pdf', 'uploads/demo_research_001.pdf', 2048000, 'application/pdf', DATE_SUB(NOW(), INTERVAL 7 DAY), 'completed'),
('2021-001', 'Assignment_Submission.docx', 'demo_assignment_001.docx', 'uploads/demo_assignment_001.docx', 1024000, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', DATE_SUB(NOW(), INTERVAL 6 DAY), 'completed'),
('2021-001', 'Project_Presentation.pptx', 'demo_presentation_001.pptx', 'uploads/demo_presentation_001.pptx', 5120000, 'application/vnd.openxmlformats-officedocument.presentationml.presentation', DATE_SUB(NOW(), INTERVAL 5 DAY), 'completed'),

-- Files from mobile
('2021-001', 'Lab_Report_Photo.jpg', 'demo_photo_001.jpg', 'uploads/demo_photo_001.jpg', 3072000, 'image/jpeg', DATE_SUB(NOW(), INTERVAL 3 DAY), 'completed'),
('2021-001', 'Notes_Scan.pdf', 'demo_scan_001.pdf', 'uploads/demo_scan_001.pdf', 1536000, 'application/pdf', DATE_SUB(NOW(), INTERVAL 2 DAY), 'completed'),

-- Files from home computer
('2021-001', 'Final_Thesis.pdf', 'demo_thesis_001.pdf', 'uploads/demo_thesis_001.pdf', 10240000, 'application/pdf', DATE_SUB(NOW(), INTERVAL 1 DAY), 'completed');

-- Link files to devices
INSERT INTO file_upload_devices (file_id, device_id, upload_method) 
SELECT uf.id, sd.id, 'web'
FROM uploaded_files uf, student_devices sd
WHERE uf.StudentNo = '2021-001' 
AND sd.StudentNo = '2021-001'
AND (
    (uf.original_name LIKE 'Research_Paper%' AND sd.device_name = 'Development Laptop') OR
    (uf.original_name LIKE 'Assignment_Submission%' AND sd.device_name = 'Development Laptop') OR
    (uf.original_name LIKE 'Project_Presentation%' AND sd.device_name = 'Development Laptop') OR
    (uf.original_name LIKE 'Lab_Report_Photo%' AND sd.device_name = 'Mobile Phone') OR
    (uf.original_name LIKE 'Notes_Scan%' AND sd.device_name = 'Mobile Phone') OR
    (uf.original_name LIKE 'Final_Thesis%' AND sd.device_name = 'Home Computer')
);

