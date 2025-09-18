// Main JavaScript file for DocEase File Management System

// Initialize the application
document.addEventListener('DOMContentLoaded', function() {
    initializeApp();
});

function initializeApp() {
    // Add fade-in animation to main content
    const mainContent = document.querySelector('main');
    if (mainContent) {
        mainContent.classList.add('fade-in');
    }

    // Initialize file upload functionality
    initializeFileUpload();
    
    // Initialize form validations
    initializeFormValidations();
    
    // Initialize tooltips and modals
    initializeUIComponents();
}

// File Upload Functions
function initializeFileUpload() {
    const fileInputs = document.querySelectorAll('input[type="file"]');
    
    fileInputs.forEach(input => {
        input.addEventListener('change', function(e) {
            handleFileSelect(e);
        });
    });
    
    // Drag and drop functionality
    const dropZones = document.querySelectorAll('.drop-zone');
    dropZones.forEach(zone => {
        zone.addEventListener('dragover', handleDragOver);
        zone.addEventListener('dragleave', handleDragLeave);
        zone.addEventListener('drop', handleDrop);
    });
}

function handleFileSelect(event) {
    const files = event.target.files;
    const fileList = document.querySelector('.file-list');
    
    if (fileList) {
        displaySelectedFiles(files, fileList);
    }
}

function displaySelectedFiles(files, container) {
    container.innerHTML = '';
    
    Array.from(files).forEach((file, index) => {
        const fileItem = createFileItem(file, index);
        container.appendChild(fileItem);
    });
}

function createFileItem(file, index) {
    const fileItem = document.createElement('div');
    fileItem.className = 'glass-card p-4 mb-3 hover-lift';
    
    const fileSize = formatFileSize(file.size);
    const fileIcon = getFileIcon(file.type);
    
    fileItem.innerHTML = `
        <div class="flex items-center justify-between">
            <div class="flex items-center space-x-3">
                <i class="${fileIcon} text-2xl text-primary-500"></i>
                <div>
                    <p class="font-semibold text-gray-800">${file.name}</p>
                    <p class="text-sm text-gray-600">${fileSize}</p>
                </div>
            </div>
            <button onclick="removeFile(${index})" class="text-red-500 hover:text-red-700">
                <i class="fas fa-times"></i>
            </button>
        </div>
    `;
    
    return fileItem;
}

function formatFileSize(bytes) {
    if (bytes === 0) return '0 Bytes';
    
    const k = 1024;
    const sizes = ['Bytes', 'KB', 'MB', 'GB'];
    const i = Math.floor(Math.log(bytes) / Math.log(k));
    
    return parseFloat((bytes / Math.pow(k, i)).toFixed(2)) + ' ' + sizes[i];
}

function getFileIcon(fileType) {
    const iconMap = {
        'application/pdf': 'fas fa-file-pdf text-red-500',
        'application/msword': 'fas fa-file-word text-blue-500',
        'application/vnd.openxmlformats-officedocument.wordprocessingml.document': 'fas fa-file-word text-blue-500',
        'application/vnd.ms-excel': 'fas fa-file-excel text-green-500',
        'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet': 'fas fa-file-excel text-green-500',
        'image/jpeg': 'fas fa-file-image text-purple-500',
        'image/png': 'fas fa-file-image text-purple-500',
        'image/gif': 'fas fa-file-image text-purple-500',
        'text/plain': 'fas fa-file-alt text-gray-500',
        'default': 'fas fa-file text-gray-500'
    };
    
    return iconMap[fileType] || iconMap['default'];
}

// Drag and Drop Functions
function handleDragOver(e) {
    e.preventDefault();
    e.currentTarget.classList.add('border-primary-500', 'bg-primary-50');
}

function handleDragLeave(e) {
    e.preventDefault();
    e.currentTarget.classList.remove('border-primary-500', 'bg-primary-50');
}

function handleDrop(e) {
    e.preventDefault();
    e.currentTarget.classList.remove('border-primary-500', 'bg-primary-50');
    
    const files = e.dataTransfer.files;
    const fileInput = e.currentTarget.querySelector('input[type="file"]');
    
    if (fileInput) {
        // For multiple file support
        const dt = new DataTransfer();
        for (let i = 0; i < files.length; i++) {
            dt.items.add(files[i]);
        }
        fileInput.files = dt.files;
        handleFileSelect({ target: { files: files } });
    }
}

// Form Validation
function initializeFormValidations() {
    const forms = document.querySelectorAll('form');
    
    forms.forEach(form => {
        form.addEventListener('submit', function(e) {
            if (!validateForm(form)) {
                e.preventDefault();
            }
        });
    });
}

function validateForm(form) {
    let isValid = true;
    const requiredFields = form.querySelectorAll('[required]');
    
    requiredFields.forEach(field => {
        if (!field.value.trim()) {
            showFieldError(field, 'This field is required');
            isValid = false;
        } else {
            clearFieldError(field);
        }
    });
    
    return isValid;
}

function showFieldError(field, message) {
    field.classList.add('border-red-500');
    
    let errorElement = field.parentNode.querySelector('.error-message');
    if (!errorElement) {
        errorElement = document.createElement('p');
        errorElement.className = 'error-message text-red-500 text-sm mt-1';
        field.parentNode.appendChild(errorElement);
    }
    
    errorElement.textContent = message;
}

function clearFieldError(field) {
    field.classList.remove('border-red-500');
    
    const errorElement = field.parentNode.querySelector('.error-message');
    if (errorElement) {
        errorElement.remove();
    }
}

// UI Components
function initializeUIComponents() {
    // Initialize modals
    initializeModals();
    
    // Initialize notifications
    initializeNotifications();
}

function initializeModals() {
    const modalTriggers = document.querySelectorAll('[data-modal-target]');
    const modalCloses = document.querySelectorAll('[data-modal-close]');
    
    modalTriggers.forEach(trigger => {
        trigger.addEventListener('click', function() {
            const targetId = this.getAttribute('data-modal-target');
            const modal = document.getElementById(targetId);
            if (modal) {
                showModal(modal);
            }
        });
    });
    
    modalCloses.forEach(close => {
        close.addEventListener('click', function() {
            const modal = this.closest('.modal');
            if (modal) {
                hideModal(modal);
            }
        });
    });
}

function showModal(modal) {
    modal.classList.remove('hidden');
    modal.classList.add('flex');
    document.body.style.overflow = 'hidden';
}

function hideModal(modal) {
    modal.classList.add('hidden');
    modal.classList.remove('flex');
    document.body.style.overflow = 'auto';
}

function initializeNotifications() {
    // Auto-hide notifications after 5 seconds
    const notifications = document.querySelectorAll('.notification');
    notifications.forEach(notification => {
        setTimeout(() => {
            notification.style.opacity = '0';
            setTimeout(() => {
                notification.remove();
            }, 300);
        }, 5000);
    });
}

// Utility Functions
function showNotification(message, type = 'success') {
    const notification = document.createElement('div');
    notification.className = `notification fixed top-4 right-4 glass-card p-4 z-50 fade-in ${type === 'error' ? 'border-red-500' : 'border-green-500'}`;
    
    const icon = type === 'error' ? 'fas fa-exclamation-circle text-red-500' : 'fas fa-check-circle text-green-500';
    
    notification.innerHTML = `
        <div class="flex items-center space-x-3">
            <i class="${icon}"></i>
            <p class="text-gray-800">${message}</p>
            <button onclick="this.parentElement.parentElement.remove()" class="text-gray-500 hover:text-gray-700">
                <i class="fas fa-times"></i>
            </button>
        </div>
    `;
    
    document.body.appendChild(notification);
    
    setTimeout(() => {
        notification.style.opacity = '0';
        setTimeout(() => {
            notification.remove();
        }, 300);
    }, 5000);
}

function removeFile(index) {
    // This function will be implemented based on the specific file upload implementation
    console.log('Remove file at index:', index);
}
