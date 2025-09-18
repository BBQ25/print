<?php
/**
 * Page Detection Library
 * Detects page count for various file types
 */

function detectPageCount($file_path, $file_type, $original_name) {
    $page_count = null;
    
    try {
        // Determine detection method based on file type
        $extension = strtolower(pathinfo($original_name, PATHINFO_EXTENSION));
        
        switch ($extension) {
            case 'pdf':
                $page_count = getPDFPageCount($file_path);
                break;
                
            case 'doc':
            case 'docx':
                $page_count = getWordPageCount($file_path, $extension);
                break;
                
            case 'ppt':
            case 'pptx':
                $page_count = getPowerPointPageCount($file_path, $extension);
                break;
                
            case 'xls':
            case 'xlsx':
                $page_count = getExcelPageCount($file_path, $extension);
                break;
                
            case 'txt':
                $page_count = getTextPageCount($file_path);
                break;
                
            case 'rtf':
                $page_count = getRTFPageCount($file_path);
                break;
                
            case 'odt':
            case 'ods':
            case 'odp':
                $page_count = getOpenOfficePageCount($file_path, $extension);
                break;
                
            default:
                // For other file types, try to estimate based on file size
                $page_count = estimatePagesBySize($file_path, $extension);
                break;
        }
        
    } catch (Exception $e) {
        error_log("Page detection error for {$original_name}: " . $e->getMessage());
        $page_count = null;
    }
    
    return $page_count;
}

function getPDFPageCount($file_path) {
    if (!file_exists($file_path)) {
        return null;
    }
    
    // Method 1: Try using shell command if available
    if (function_exists('shell_exec') && !isWindowsWithoutPdfinfo()) {
        $output = shell_exec("pdfinfo \"$file_path\" 2>/dev/null | grep Pages");
        if ($output && preg_match('/Pages:\s*(\d+)/', $output, $matches)) {
            return (int)$matches[1];
        }
    }
    
    // Method 2: Parse PDF manually (basic method)
    $content = file_get_contents($file_path);
    if ($content) {
        // Count /Type /Page objects
        $page_count = preg_match_all('/\/Type\s*\/Page[^s]/', $content);
        if ($page_count > 0) {
            return $page_count;
        }
        
        // Alternative: Count /Count in /Pages object
        if (preg_match('/\/Count\s+(\d+)/', $content, $matches)) {
            return (int)$matches[1];
        }
    }
    
    return null;
}

function getWordPageCount($file_path, $extension) {
    if ($extension === 'docx') {
        return getDocxPageCount($file_path);
    } else {
        // For .doc files, estimate based on content
        return estimateWordPageCount($file_path);
    }
}

function getDocxPageCount($file_path) {
    if (!class_exists('ZipArchive')) {
        return estimateWordPageCount($file_path);
    }
    
    $zip = new ZipArchive();
    if ($zip->open($file_path) === TRUE) {
        // Try to get page count from document properties
        $app_xml = $zip->getFromName('docProps/app.xml');
        if ($app_xml) {
            if (preg_match('/<Pages>(\d+)<\/Pages>/', $app_xml, $matches)) {
                $zip->close();
                return (int)$matches[1];
            }
        }
        
        // Alternative: Count page breaks in document
        $document_xml = $zip->getFromName('word/document.xml');
        if ($document_xml) {
            $page_breaks = substr_count($document_xml, 'w:br') + 1;
            $zip->close();
            return max(1, $page_breaks);
        }
        
        $zip->close();
    }
    
    return estimateWordPageCount($file_path);
}

function getPowerPointPageCount($file_path, $extension) {
    if ($extension === 'pptx' && class_exists('ZipArchive')) {
        $zip = new ZipArchive();
        if ($zip->open($file_path) === TRUE) {
            // Count slide files
            $slide_count = 0;
            for ($i = 0; $i < $zip->numFiles; $i++) {
                $filename = $zip->getNameIndex($i);
                if (preg_match('/ppt\/slides\/slide\d+\.xml/', $filename)) {
                    $slide_count++;
                }
            }
            $zip->close();
            return $slide_count > 0 ? $slide_count : null;
        }
    }
    
    // Estimate for .ppt files
    return estimatePagesBySize($file_path, $extension);
}

function getExcelPageCount($file_path, $extension) {
    if ($extension === 'xlsx' && class_exists('ZipArchive')) {
        $zip = new ZipArchive();
        if ($zip->open($file_path) === TRUE) {
            // Count worksheet files
            $sheet_count = 0;
            for ($i = 0; $i < $zip->numFiles; $i++) {
                $filename = $zip->getNameIndex($i);
                if (preg_match('/xl\/worksheets\/sheet\d+\.xml/', $filename)) {
                    $sheet_count++;
                }
            }
            $zip->close();
            return $sheet_count > 0 ? $sheet_count : null;
        }
    }
    
    return estimatePagesBySize($file_path, $extension);
}

function getTextPageCount($file_path) {
    $content = file_get_contents($file_path);
    if ($content) {
        // Estimate pages based on character count (assuming ~3000 chars per page)
        $char_count = strlen($content);
        return max(1, ceil($char_count / 3000));
    }
    return null;
}

function getRTFPageCount($file_path) {
    $content = file_get_contents($file_path);
    if ($content) {
        // Count \page RTF commands
        $page_breaks = substr_count($content, '\\page');
        return max(1, $page_breaks + 1);
    }
    return null;
}

function getOpenOfficePageCount($file_path, $extension) {
    if (!class_exists('ZipArchive')) {
        return estimatePagesBySize($file_path, $extension);
    }
    
    $zip = new ZipArchive();
    if ($zip->open($file_path) === TRUE) {
        $meta_xml = $zip->getFromName('meta.xml');
        if ($meta_xml) {
            if (preg_match('/<meta:page-count>(\d+)<\/meta:page-count>/', $meta_xml, $matches)) {
                $zip->close();
                return (int)$matches[1];
            }
        }
        $zip->close();
    }
    
    return estimatePagesBySize($file_path, $extension);
}

function estimateWordPageCount($file_path) {
    $file_size = filesize($file_path);
    // Rough estimate: 50KB per page for Word documents
    return max(1, ceil($file_size / (50 * 1024)));
}

function estimatePagesBySize($file_path, $extension) {
    $file_size = filesize($file_path);
    
    // Different estimates based on file type
    $estimates = [
        'pdf' => 100 * 1024,    // ~100KB per page
        'doc' => 50 * 1024,     // ~50KB per page
        'docx' => 30 * 1024,    // ~30KB per page (compressed)
        'ppt' => 200 * 1024,    // ~200KB per slide
        'pptx' => 100 * 1024,   // ~100KB per slide (compressed)
        'xls' => 50 * 1024,     // ~50KB per sheet
        'xlsx' => 25 * 1024,    // ~25KB per sheet (compressed)
        'txt' => 5 * 1024,      // ~5KB per page
        'rtf' => 20 * 1024,     // ~20KB per page
        'default' => 100 * 1024 // Default estimate
    ];
    
    $bytes_per_page = $estimates[$extension] ?? $estimates['default'];
    return max(1, ceil($file_size / $bytes_per_page));
}

function isWindowsWithoutPdfinfo() {
    return strtoupper(substr(PHP_OS, 0, 3)) === 'WIN' && !shell_exec('where pdfinfo 2>nul');
}

function getPageCountDisplay($page_count, $file_type) {
    if ($page_count === null) {
        return '<span class="text-muted">-</span>';
    }
    
    $extension = strtolower(pathinfo($file_type, PATHINFO_EXTENSION));
    
    // Different terminology for different file types
    switch ($extension) {
        case 'ppt':
        case 'pptx':
            $unit = $page_count == 1 ? 'slide' : 'slides';
            break;
        case 'xls':
        case 'xlsx':
        case 'ods':
            $unit = $page_count == 1 ? 'sheet' : 'sheets';
            break;
        default:
            $unit = $page_count == 1 ? 'page' : 'pages';
            break;
    }
    
    return "<span class='text-dark'>{$page_count} {$unit}</span>";
}
?>

