-- DocEase File Management System Database Setup
-- Database: doc_ease

-- Create database if it doesn't exist
CREATE DATABASE IF NOT EXISTS doc_ease;
USE doc_ease;

-- Students table
CREATE TABLE IF NOT EXISTS students (
    StudentNo VARCHAR(20) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    MiddleName VARCHAR(50),
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    Course VARCHAR(100),
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Upload files table (updated to match existing structure)
CREATE TABLE IF NOT EXISTS uploaded_files (
    id INT AUTO_INCREMENT PRIMARY KEY,
    StudentNo VARCHAR(50) NOT NULL,
    original_name VARCHAR(255) NOT NULL,
    file_name VARCHAR(255) NOT NULL,
    file_path VARCHAR(500) NOT NULL,
    file_size BIGINT,
    file_type VARCHAR(20),
    upload_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    status ENUM('pending','processing','completed','failed') DEFAULT 'completed',
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME NULL,
    deleted_by VARCHAR(50) NULL,
    download_count INT DEFAULT 0,
    first_download_date DATETIME NULL,
    last_download_date DATETIME NULL,
    processed_date DATETIME NULL,
    notes TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX idx_student (StudentNo),
    INDEX idx_upload_date (upload_date),
    INDEX idx_is_deleted (is_deleted)
);

-- Student device tracking table
CREATE TABLE IF NOT EXISTS student_devices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    StudentNo VARCHAR(50) NOT NULL,
    device_id VARCHAR(100) NOT NULL,
    device_name VARCHAR(100),
    device_type ENUM('laptop','desktop','mobile','tablet','other') DEFAULT 'other',
    operating_system VARCHAR(50),
    browser_name VARCHAR(50),
    browser_version VARCHAR(20),
    ip_address VARCHAR(45),
    mac_address VARCHAR(17),
    user_agent TEXT,
    screen_resolution VARCHAR(20),
    timezone VARCHAR(50),
    location_latitude DECIMAL(10, 8) NULL,
    location_longitude DECIMAL(11, 8) NULL,
    location_address TEXT,
    network_type VARCHAR(20),
    connection_speed VARCHAR(20),
    first_seen DATETIME DEFAULT CURRENT_TIMESTAMP,
    last_seen DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    is_active BOOLEAN DEFAULT TRUE,
    trust_level ENUM('trusted','unknown','suspicious') DEFAULT 'unknown',
    notes TEXT,
    UNIQUE KEY unique_device (StudentNo, device_id),
    INDEX idx_student_device (StudentNo),
    INDEX idx_last_seen (last_seen),
    INDEX idx_trust_level (trust_level)
);

-- File upload device tracking (links files to devices)
CREATE TABLE IF NOT EXISTS file_upload_devices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    file_id INT NOT NULL,
    device_id INT NOT NULL,
    upload_timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    upload_method ENUM('web','api','mobile_app') DEFAULT 'web',
    FOREIGN KEY (file_id) REFERENCES uploaded_files(id) ON DELETE CASCADE,
    FOREIGN KEY (device_id) REFERENCES student_devices(id) ON DELETE CASCADE,
    INDEX idx_file_device (file_id, device_id)
);

-- Insert sample students
INSERT IGNORE INTO students (StudentNo, FirstName, MiddleName, LastName, Email, Course) VALUES
('2021-001', 'John', 'Michael', 'Doe', 'john.doe@email.com', 'Computer Science'),
('2021-002', 'Jane', 'Marie', 'Smith', 'jane.smith@email.com', 'Information Technology'),
('2021-003', 'Robert', 'James', 'Johnson', 'robert.johnson@email.com', 'Software Engineering'),
('2021-004', 'Emily', 'Rose', 'Davis', 'emily.davis@email.com', 'Computer Engineering'),
('2021-005', 'Michael', 'David', 'Wilson', 'michael.wilson@email.com', 'Data Science');

-- Create uploads directory (Note: This should be created manually on the server)
-- Make sure to create the 'uploads' folder in your project root with proper write permissions
