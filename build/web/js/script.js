// Wait for the DOM to be fully loaded
document.addEventListener('DOMContentLoaded', function() {
    // Form validation
    setupFormValidation();
    
    // Dashboard tab switching
    setupDashboardTabs();
    
    // Browse page filtering
    setupFilters();
    
    // Price range display
    setupPriceRange();
    
    // Auto-dismiss alerts after 5 seconds
    setupAlertDismissal();
});

// Form validation
function setupFormValidation() {
    const loginForm = document.querySelector('form[action="loginAction.jsp"]');
    const registerForm = document.querySelector('form[action="registerAction.jsp"]');
    
    if (loginForm) {
        loginForm.addEventListener('submit', function(event) {
            const username = document.getElementById('username').value.trim();
            const password = document.getElementById('password').value.trim();
            
            if (username === '' || password === '') {
                event.preventDefault();
                showAlert('Username and password are required', 'danger');
            }
        });
    }
    
    if (registerForm) {
        registerForm.addEventListener('submit', function(event) {
            const username = document.getElementById('username').value.trim();
            const email = document.getElementById('email').value.trim();
            const password = document.getElementById('password').value.trim();
            const confirmPassword = document.getElementById('confirmPassword').value.trim();
            const agree = document.getElementById('agree').checked;
            
            // Check for empty fields
            if (username === '' || email === '' || password === '' || confirmPassword === '') {
                event.preventDefault();
                showAlert('All fields are required', 'danger');
                return;
            }
            
            // Check if email is valid
            if (!isValidEmail(email)) {
                event.preventDefault();
                showAlert('Please enter a valid email address', 'danger');
                return;
            }
            
            // Check if password is at least 8 characters
            if (password.length < 8) {
                event.preventDefault();
                showAlert('Password must be at least 8 characters long', 'danger');
                return;
            }
            
            // Check if password contains at least one number
            if (!/\d/.test(password)) {
                event.preventDefault();
                showAlert('Password must contain at least one number', 'danger');
                return;
            }
            
            // Check if passwords match
            if (password !== confirmPassword) {
                event.preventDefault();
                showAlert('Passwords do not match', 'danger');
                return;
            }
            
            // Check if terms are agreed to
            if (!agree) {
                event.preventDefault();
                showAlert('You must agree to the Terms of Service and Privacy Policy', 'danger');
                return;
            }
        });
    }
}

// Dashboard tab switching
function setupDashboardTabs() {
    const dashboardNav = document.querySelector('.dashboard-nav');
    
    if (dashboardNav) {
        const navLinks = dashboardNav.querySelectorAll('a');
        
        navLinks.forEach(link => {
            link.addEventListener('click', function(event) {
                event.preventDefault();
                
                // Get the target tab ID from the href attribute
                const targetId = this.getAttribute('href').substring(1);
                
                // Hide all tabs
                document.querySelectorAll('.dashboard-tab').forEach(tab => {
                    tab.classList.remove('active');
                });
                
                // Show the target tab
                const targetTab = document.getElementById(targetId);
                if (targetTab) {
                    targetTab.classList.add('active');
                }
                
                // Update active nav link
                navLinks.forEach(navLink => {
                    navLink.parentElement.classList.remove('active');
                });
                this.parentElement.classList.add('active');
            });
        });
    }
}

// Browse page filtering
function setupFilters() {
    const filterCheckboxes = document.querySelectorAll('.filter-checkbox input');
    const categoryLinks = document.querySelectorAll('.filter-list a');
    const sortSelect = document.getElementById('sortBy');
    
    // Category filter
    if (categoryLinks) {
        categoryLinks.forEach(link => {
            link.addEventListener('click', function(event) {
                event.preventDefault();
                
                // Remove active class from all links
                categoryLinks.forEach(item => {
                    item.classList.remove('active');
                });
                
                // Add active class to clicked link
                this.classList.add('active');
                
                // Here you would apply the filter to products
                // For the prototype, we'll just simulate filtering
                console.log('Category filter:', this.textContent);
            });
        });
    }
    
    // Checkboxes filters
    if (filterCheckboxes) {
        filterCheckboxes.forEach(checkbox => {
            checkbox.addEventListener('change', function() {
                // Here you would apply the filter based on checkboxes
                // For the prototype, we'll just simulate filtering
                console.log('Checkbox filter:', this.name, this.value, this.checked);
            });
        });
    }
    
    // Sort filter
    if (sortSelect) {
        sortSelect.addEventListener('change', function() {
            // Here you would apply sorting to products
            // For the prototype, we'll just simulate sorting
            console.log('Sort products by:', this.value);
        });
    }
    
    // Apply filters button
    const applyButton = document.querySelector('.filter-actions .btn-primary');
    if (applyButton) {
        applyButton.addEventListener('click', function() {
            // Here you would apply all selected filters
            // For the prototype, we'll just simulate applying filters
            console.log('Applying all filters');
        });
    }
    
    // Reset filters button
    const resetButton = document.querySelector('.filter-actions .btn-secondary');
    if (resetButton) {
        resetButton.addEventListener('click', function() {
            // Reset checkboxes
            filterCheckboxes.forEach(checkbox => {
                checkbox.checked = checkbox.name === 'availability' && checkbox.value === 'inStock';
            });
            
            // Reset price range
            const priceRange = document.getElementById('priceRange');
            if (priceRange) {
                priceRange.value = priceRange.max;
                document.getElementById('priceValue').textContent = '$' + priceRange.value;
            }
            
            // Reset category
            categoryLinks.forEach(link => {
                link.classList.remove('active');
                if (link.textContent === 'All Categories') {
                    link.classList.add('active');
                }
            });
            
            // Reset sort
            if (sortSelect) {
                sortSelect.value = 'relevance';
            }
            
            console.log('Filters reset');
        });
    }
}

// Price range display
function setupPriceRange() {
    const priceRange = document.getElementById('priceRange');
    const priceValue = document.getElementById('priceValue');
    
    if (priceRange && priceValue) {
        // Update the price value display
        priceRange.addEventListener('input', function() {
            priceValue.textContent = '$' + this.value;
        });
    }
}

// Show alert
function showAlert(message, type) {
    // Remove any existing alerts
    const existingAlerts = document.querySelectorAll('.alert');
    existingAlerts.forEach(alert => {
        alert.remove();
    });
    
    // Create the alert
    const alertDiv = document.createElement('div');
    alertDiv.className = 'alert alert-' + type;
    alertDiv.textContent = message;
    
    // Insert the alert at the top of the form
    const form = document.querySelector('form');
    if (form) {
        form.insertBefore(alertDiv, form.firstChild);
    }
}

// Auto-dismiss alerts
function setupAlertDismissal() {
    const alerts = document.querySelectorAll('.alert');
    
    alerts.forEach(alert => {
        setTimeout(() => {
            alert.style.opacity = '0';
            setTimeout(() => {
                alert.remove();
            }, 300);
        }, 5000);
    });
}

// Helper function to validate email
function isValidEmail(email) {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}

// Add to cart functionality
const addToCartButtons = document.querySelectorAll('.btn-primary');
addToCartButtons.forEach(button => {
    if (button.textContent.includes('Add to Cart')) {
        button.addEventListener('click', function() {
            // For the prototype, we'll just show a notification
            alert('Product added to cart!');
        });
    }
});