<?php
require_once '../config/database.php';
require_once '../config/session.php';

requireAdmin();

header('Content-Type: application/json');

// Get search parameters
$search = isset($_GET['search']) ? trim($_GET['search']) : '';
$student_filter = isset($_GET['student']) ? trim($_GET['student']) : '';
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$items_per_page = isset($_GET['per_page']) ? (int)$_GET['per_page'] : 10;

// Validate page number
if ($page < 1) $page = 1;

$offset = ($page - 1) * $items_per_page;

$database = new Database();
$db = $database->getConnection();

try {
    // Build query conditions
    $where_conditions = [];
    $params = [];

    if (!empty($search)) {
        $where_conditions[] = "(uf.original_name LIKE :search OR s.FirstName LIKE :search OR s.Surname LIKE :search)";
        $params[':search'] = "%$search%";
    }

    if (!empty($student_filter)) {
        $where_conditions[] = "uf.StudentNo = :student";
        $params[':student'] = $student_filter;
    }

    $where_clause = !empty($where_conditions) ? "WHERE " . implode(" AND ", $where_conditions) : "";

    // Get total count for pagination
    $count_query = "SELECT COUNT(*) as total 
                    FROM uploaded_files uf 
                    LEFT JOIN students s ON uf.StudentNo COLLATE utf8mb4_general_ci = s.StudentNo COLLATE utf8mb4_general_ci 
                    $where_clause";

    $count_stmt = $db->prepare($count_query);
    foreach ($params as $key => $value) {
        $count_stmt->bindValue($key, $value);
    }
    $count_stmt->execute();
    $total_items = $count_stmt->fetch()['total'];
    $total_pages = ceil($total_items / $items_per_page);

    // Get files with pagination
    $files_query = "SELECT uf.*, s.FirstName, s.Surname, s.Course 
                    FROM uploaded_files uf 
                    LEFT JOIN students s ON uf.StudentNo COLLATE utf8mb4_general_ci = s.StudentNo COLLATE utf8mb4_general_ci 
                    $where_clause
                    ORDER BY uf.upload_date DESC 
                    LIMIT :limit OFFSET :offset";

    $files_stmt = $db->prepare($files_query);
    foreach ($params as $key => $value) {
        $files_stmt->bindValue($key, $value);
    }
    $files_stmt->bindValue(':limit', $items_per_page, PDO::PARAM_INT);
    $files_stmt->bindValue(':offset', $offset, PDO::PARAM_INT);
    $files_stmt->execute();
    $files = $files_stmt->fetchAll();

    // Get all students for filter dropdown
    $students_query = "SELECT StudentNo, FirstName, Surname FROM students ORDER BY FirstName, Surname";
    $students_stmt = $db->prepare($students_query);
    $students_stmt->execute();
    $all_students = $students_stmt->fetchAll();

    // Prepare response
    $response = [
        'success' => true,
        'data' => [
            'files' => $files,
            'students' => $all_students,
            'pagination' => [
                'current_page' => $page,
                'total_pages' => $total_pages,
                'total_items' => $total_items,
                'items_per_page' => $items_per_page,
                'offset' => $offset
            ],
            'filters' => [
                'search' => $search,
                'student' => $student_filter
            ]
        ]
    ];

    echo json_encode($response);

} catch (Exception $e) {
    $response = [
        'success' => false,
        'error' => 'Database error: ' . $e->getMessage()
    ];
    
    http_response_code(500);
    echo json_encode($response);
}
?>
