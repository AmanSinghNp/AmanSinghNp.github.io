<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:include page="/WEB-INF/includes/header.jsp">
    <jsp:param name="title" value="Dashboard" />
</jsp:include>

<!-- For the prototype, we'll simulate the user session to show the dashboard -->
<%
    // In a real application, you'd check the session for user data
    // This is just for the prototype
    if (session.getAttribute("user") == null) {
        // Create a dummy user object for demonstration
        java.util.HashMap<String, Object> user = new java.util.HashMap<>();
        user.put("username", "demo_user");
        user.put("fullName", "Demo User");
        user.put("email", "demo@example.com");
        session.setAttribute("user", user);
    }
%>

<section class="dashboard-section">
    <div class="dashboard-header">
        <h1>Welcome, ${sessionScope.user.fullName}</h1>
        <p>Manage your account, orders, and more</p>
    </div>
    
    <div class="dashboard-container">
        <div class="dashboard-sidebar">
            <div class="user-info">
                <div class="user-avatar">
                    <i class="fas fa-user-circle"></i>
                </div>
                <div class="user-details">
                    <h3>${sessionScope.user.username}</h3>
                    <p>${sessionScope.user.email}</p>
                </div>
            </div>
            
            <nav class="dashboard-nav">
                <ul>
                    <li class="active"><a href="#overview"><i class="fas fa-tachometer-alt"></i> Overview</a></li>
                    <li><a href="#orders"><i class="fas fa-shopping-bag"></i> Orders</a></li>
                    <li><a href="#wishlist"><i class="fas fa-heart"></i> Wishlist</a></li>
                    <li><a href="#profile"><i class="fas fa-user"></i> Profile</a></li>
                    <li><a href="#addresses"><i class="fas fa-map-marker-alt"></i> Addresses</a></li>
                    <li><a href="#payments"><i class="fas fa-credit-card"></i> Payment Methods</a></li>
                    <li><a href="#settings"><i class="fas fa-cog"></i> Settings</a></li>
                </ul>
            </nav>
        </div>
        
        <div class="dashboard-content">
            <div id="overview" class="dashboard-tab active">
                <div class="dashboard-cards">
                    <div class="dashboard-card">
                        <div class="card-icon">
                            <i class="fas fa-shopping-bag"></i>
                        </div>
                        <div class="card-content">
                            <h3>Orders</h3>
                            <p class="card-value">5</p>
                            <p class="card-status">2 in progress</p>
                        </div>
                    </div>
                    
                    <div class="dashboard-card">
                        <div class="card-icon">
                            <i class="fas fa-heart"></i>
                        </div>
                        <div class="card-content">
                            <h3>Wishlist</h3>
                            <p class="card-value">12</p>
                            <p class="card-status">3 items on sale</p>
                        </div>
                    </div>
                    
                    <div class="dashboard-card">
                        <div class="card-icon">
                            <i class="fas fa-bell"></i>
                        </div>
                        <div class="card-content">
                            <h3>Notifications</h3>
                            <p class="card-value">8</p>
                            <p class="card-status">4 unread</p>
                        </div>
                    </div>
                    
                    <div class="dashboard-card">
                        <div class="card-icon">
                            <i class="fas fa-tag"></i>
                        </div>
                        <div class="card-content">
                            <h3>Coupons</h3>
                            <p class="card-value">3</p>
                            <p class="card-status">1 expiring soon</p>
                        </div>
                    </div>
                </div>
                
                <div class="dashboard-sections">
                    <div class="dashboard-section">
                        <div class="section-header">
                            <h3>Recent Orders</h3>
                            <a href="#orders" class="view-all">View All</a>
                        </div>
                        
                        <div class="orders-table">
                            <table>
                                <thead>
                                    <tr>
                                        <th>Order ID</th>
                                        <th>Date</th>
                                        <th>Items</th>
                                        <th>Total</th>
                                        <th>Status</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>#ORD-2025-1542</td>
                                        <td>April 2, 2025</td>
                                        <td>3 items</td>
                                        <td>$153.85</td>
                                        <td><span class="status-badge processing">Processing</span></td>
                                        <td><a href="#" class="btn btn-sm">View</a></td>
                                    </tr>
                                    <tr>
                                        <td>#ORD-2025-1498</td>
                                        <td>March 28, 2025</td>
                                        <td>2 items</td>
                                        <td>$89.90</td>
                                        <td><span class="status-badge shipped">Shipped</span></td>
                                        <td><a href="#" class="btn btn-sm">View</a></td>
                                    </tr>
                                    <tr>
                                        <td>#ORD-2025-1423</td>
                                        <td>March 15, 2025</td>
                                        <td>5 items</td>
                                        <td>$214.75</td>
                                        <td><span class="status-badge delivered">Delivered</span></td>
                                        <td><a href="#" class="btn btn-sm">View</a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    
                    <div class="dashboard-section">
                        <div class="section-header">
                            <h3>Recently Viewed Products</h3>
                            <a href="${pageContext.request.contextPath}/browse.jsp" class="view-all">Browse More</a>
                        </div>
                        
                        <div class="products-strip">
                            <div class="product-card-small">
                                <div class="product-image">
                                    <img src="${pageContext.request.contextPath}/images/product-placeholder.jpg" alt="Product">
                                </div>
                                <div class="product-details">
                                    <h4>ESP32-CAM WiFi Module</h4>
                                    <p class="product-price">$12.95</p>
                                    <button class="btn btn-sm btn-primary">Add to Cart</button>
                                </div>
                            </div>
                            
                            <div class="product-card-small">
                                <div class="product-image">
                                    <img src="${pageContext.request.contextPath}/images/product-placeholder.jpg" alt="Product">
                                </div>
                                <div class="product-details">
                                    <h4>DHT22 Temperature Sensor</h4>
                                    <p class="product-price">$9.95</p>
                                    <button class="btn btn-sm btn-primary">Add to Cart</button>
                                </div>
                            </div>
                            
                            <div class="product-card-small">
                                <div class="product-image">
                                    <img src="${pageContext.request.contextPath}/images/product-placeholder.jpg" alt="Product">
                                </div>
                                <div class="product-details">
                                    <h4>OLED Display Module 0.96"</h4>
                                    <p class="product-price">$7.95</p>
                                    <button class="btn btn-sm btn-primary">Add to Cart</button>
                                </div>
                            </div>
                            
                            <div class="product-card-small">
                                <div class="product-image">
                                    <img src="${pageContext.request.contextPath}/images/product-placeholder.jpg" alt="Product">
                                </div>
                                <div class="product-details">
                                    <h4>Micro Servo Motor SG90</h4>
                                    <p class="product-price">$4.95</p>
                                    <button class="btn btn-sm btn-primary">Add to Cart</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Other dashboard tabs would be implemented here -->
            <div id="orders" class="dashboard-tab">
                <h3>Your Orders</h3>
                <p>This tab would show all user orders.</p>
            </div>
            
            <div id="wishlist" class="dashboard-tab">
                <h3>Your Wishlist</h3>
                <p>This tab would show all wishlisted products.</p>
            </div>
            
            <div id="profile" class="dashboard-tab">
                <h3>Your Profile</h3>
                <p>This tab would show and allow editing of user profile information.</p>
            </div>
        </div>
    </div>
</section>

<jsp:include page="WEB-INF/includes/footer.jsp" />