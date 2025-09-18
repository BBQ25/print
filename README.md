# DocEase File Management System

A modern, responsive file management system built with PHP, JavaScript, Tailwind CSS, and featuring glassmorphism design effects inspired by the Sneat template.

## Features

### Student Features
- **Simple Login**: Students log in using their Student Number
- **Dashboard**: View personal information and file upload history
- **File Upload**: Upload files with drag-and-drop support
- **File Management**: Download and delete uploaded files
- **Responsive Design**: Works seamlessly on desktop and mobile devices

### Admin Features
- **Admin Dashboard**: Overview of system statistics
- **Student Management**: Add new students and view their information
- **File Oversight**: View and manage all student files
- **Recent Activity**: Monitor recent file uploads
- **Student File Access**: View individual student file collections

## Technology Stack

- **Backend**: PHP with PDO for database operations
- **Frontend**: HTML5, JavaScript (Vanilla)
- **Styling**: Tailwind CSS with custom glassmorphism effects
- **Database**: MySQL
- **Font**: Figtree (Google Fonts)
- **Icons**: Font Awesome 6
- **Design**: Sneat-inspired modern UI

## Installation

### Prerequisites
- PHP 7.4 or higher
- MySQL 5.7 or higher
- Web server (Apache/Nginx)
- Modern web browser

### Setup Steps

#### Automated Installation (Recommended)

1. **Clone or Download** the project to your web server directory
   ```
   C:\laragon\www\is_projects\print\
   ```

2. **Run Automated Setup**
   - Navigate to: `http://localhost/is_projects/print/`
   - The system will automatically redirect to `setup.php`
   - Follow the 4-step installation wizard:
     - **Step 1**: System requirements check
     - **Step 2**: Database configuration and connection test (connects to existing doc_ease database)
     - **Step 3**: Database verification and configuration update
     - **Step 4**: Final setup and directory creation

3. **Access the System**
   - After installation, you'll be redirected to login pages
   - Student Login: `http://localhost/is_projects/print/login.php`
   - Admin Login: `http://localhost/is_projects/print/admin/login.php`

#### Manual Installation (Alternative)

1. **Clone or Download** the project to your web server directory

2. **Database Requirements**
   - Ensure your existing `doc_ease` database is accessible
   - Required tables: `students` and `uploaded_files`
   - The system will connect to your existing database structure

3. **Configure Database Connection**
   - Edit `config/database.php` with your database settings
   - Update host, username, password to match your existing doc_ease database

4. **Create Required Directories**
   - Create an `uploads` folder in the project root
   - Set appropriate write permissions (755 or 777)
   - Create `config/installed.lock` file to mark system as installed

5. **Access the System**
   - Student Login: `http://localhost/is_projects/print/login.php`
   - Admin Login: `http://localhost/is_projects/print/admin/login.php`

## Default Credentials

### Students
- Use existing student numbers from your `doc_ease` database
- Students login using their `StudentNo` field from the students table

### Admin Access
- Username: `admin`
- Password: `admin123`

## File Structure

```
print/
├── admin/                      # Admin panel files
│   ├── dashboard.php          # Admin dashboard
│   ├── login.php              # Admin login
│   ├── add_student.php        # Add new student
│   ├── view_student.php       # View student files
│   ├── download_file.php      # Download files (admin)
│   ├── delete_file.php        # Delete files (admin)
│   └── logout.php             # Admin logout
├── assets/                     # Static assets
│   ├── css/
│   │   └── style.css          # Custom styles with glassmorphism
│   └── js/
│       └── main.js            # JavaScript functionality
├── config/                     # Configuration files
│   ├── database.php           # Database connection
│   ├── session.php            # Session management
│   ├── database_setup.sql     # Database schema and sample data
│   └── installed.lock         # Installation marker (created automatically)
├── includes/                   # Shared components
│   ├── header.php             # Common header
│   └── footer.php             # Common footer
├── uploads/                    # File upload directory
├── dashboard.php               # Student dashboard
├── login.php                   # Student login
├── upload.php                  # File upload handler
├── download.php               # File download handler
├── delete_file.php            # File deletion handler
├── logout.php                 # Logout handler
├── index.php                  # Entry point (redirects to login)
├── database_setup.sql         # Database schema and sample data
└── README.md                  # This file
```

## Database Schema

### Students Table
- `StudentNo` (VARCHAR, Primary Key): Unique student identifier
- `FirstName` (VARCHAR): Student's first name
- `MiddleName` (VARCHAR): Student's middle name (optional)
- `LastName` (VARCHAR): Student's last name
- `Email` (VARCHAR): Student's email address (optional)
- `Course` (VARCHAR): Student's course (optional)
- `CreatedAt` (TIMESTAMP): Record creation date

### Uploaded Files Table
- `FileID` (INT, Auto Increment, Primary Key): Unique file identifier
- `StudentNo` (VARCHAR, Foreign Key): References students table
- `FileName` (VARCHAR): Original filename
- `FilePath` (VARCHAR): Server file path
- `FileSize` (BIGINT): File size in bytes
- `UploadDate` (TIMESTAMP): Upload timestamp

## Security Features

- **Session Management**: Secure PHP sessions for authentication
- **File Upload Validation**: File size limits and type checking
- **SQL Injection Protection**: Prepared statements with PDO
- **Access Control**: Role-based access (Student/Admin)
- **File Path Security**: Secure file storage and access

## Customization

### Styling
- Edit `assets/css/style.css` for custom styles
- Modify Tailwind configuration in `includes/header.php`
- Glassmorphism effects can be adjusted in the CSS file

### Database
- Modify `config/database.php` for different database settings
- Update table structure as needed for additional fields

### File Upload
- Change upload limits in `upload.php`
- Modify allowed file types as required
- Adjust storage location in upload handlers

## Browser Support

- Chrome 80+
- Firefox 75+
- Safari 13+
- Edge 80+

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This project is open source and available under the MIT License.

## Support

For issues and questions, please check the documentation or create an issue in the project repository.
