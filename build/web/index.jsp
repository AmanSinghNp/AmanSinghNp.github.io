<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/includes/header.jsp">
    <jsp:param name="title" value="Welcome" />
</jsp:include>

<!-- Hero Section -->
<section class="hero">
    <div class="hero-content">
        <h1>Welcome to IoT Bay</h1>
        <p>Your one-stop shop for Internet of Things devices and components</p>
        <div class="hero-buttons">
            <a href="${pageContext.request.contextPath}/browse.jsp" class="btn btn-primary">Browse Products</a>
            <a href="${pageContext.request.contextPath}/register.jsp" class="btn btn-secondary">Sign Up</a>
        </div>
    </div>
</section>

<!-- About Us Section -->
<section class="about-section">
    <div class="container">
        <div class="about-text">
            <h1 class="small-heading">ABOUT US</h1>
            <br/>
            <h1 class="welcome-heading">WELCOME<% if(session.getAttribute("user") != null) { 
                  java.util.HashMap<String, Object> user = (java.util.HashMap<String, Object>)session.getAttribute("user");
                  out.print(", " + user.get("fullName"));
              } %></h1>
            <p>
                IoTBay is a small, Sydney-based IoT devices retailer aiming to transition from its traditional desktop system to a modern, user-friendly online platform. This Java web application is designed to enable customers to easily browse, search, and order a wide range of IoT devices—such as sensors, actuators, and gateways—while offering staff robust tools for inventory management, order processing, and overall business operations.
            </p>
            <p>
                Using an agile, time-and-material approach, the project is divided into iterative releases. The initial release (R0) focuses on essential features like user registration, login, and logout, establishing a secure foundation for the system. The subsequent release (R1) will expand functionality to deliver a fully operational online ordering experience. This approach not only mitigates risks related to time, budget, and team size but also allows the system to evolve based on continuous stakeholder feedback.
            </p>
            <p>
                Ultimately, the IoTBay project seeks to enhance customer experience and streamline internal processes, making it easier for both customers and staff to interact with the online platform while maintaining the competitive edge of the business.
            </p>
            
            <button class="start-button" onclick="window.location.href='browse.jsp'">
                Get started
            </button>
        </div>
    </div>
</section>

<!-- Features Section -->
<section class="features">
    <h2 class="section-title">Why Choose IoT Bay?</h2>
    <div class="features-grid">
        <div class="feature-card">
            <div class="feature-icon">
                <i class="fas fa-cubes"></i>
            </div>
            <h3>Wide Selection</h3>
            <p>Browse through thousands of IoT devices, sensors, and components from leading manufacturers.</p>
        </div>
        <div class="feature-card">
            <div class="feature-icon">
                <i class="fas fa-shipping-fast"></i>
            </div>
            <h3>Fast Shipping</h3>
            <p>Get your orders delivered quickly with our express shipping options across Australia.</p>
        </div>
        <div class="feature-card">
            <div class="feature-icon">
                <i class="fas fa-headset"></i>
            </div>
            <h3>Expert Support</h3>
            <p>Our technical experts are ready to help you with product selection and troubleshooting.</p>
        </div>
        <div class="feature-card">
            <div class="feature-icon">
                <i class="fas fa-shield-alt"></i>
            </div>
            <h3>Secure Shopping</h3>
            <p>Shop with confidence with our secure payment gateway and data protection.</p>
        </div>
    </div>
</section>

<!-- Popular Products Section -->
<section class="popular-products">
    <h2 class="section-title">Popular Products</h2>
    <div class="products-grid">
        <div class="product-card">
            <div class="product-image">
                <img src="${pageContext.request.contextPath}/images/product-placeholder.jpg" alt="Raspberry Pi 4">
            </div>
            <div class="product-details">
                <h3>Raspberry Pi 4 Model B</h3>
                <p class="product-description">The latest Raspberry Pi computer with 4GB RAM.</p>
                <p class="product-price">$89.95</p>
                <a href="#" class="btn btn-sm">View Details</a>
            </div>
        </div>
        <div class="product-card">
            <div class="product-image">
                <img src="${pageContext.request.contextPath}/images/product-placeholder.jpg" alt="Arduino Uno">
            </div>
            <div class="product-details">
                <h3>Arduino Uno Rev3</h3>
                <p class="product-description">The most used and documented board in the Arduino family.</p>
                <p class="product-price">$29.95</p>
                <a href="#" class="btn btn-sm">View Details</a>
            </div>
        </div>
        <div class="product-card">
            <div class="product-image">
                <img src="${pageContext.request.contextPath}/images/product-placeholder.jpg" alt="ESP32">
            </div>
            <div class="product-details">
                <h3>ESP32 Development Board</h3>
                <p class="product-description">Dual-core microcontroller with Wi-Fi and Bluetooth.</p>
                <p class="product-price">$14.95</p>
                <a href="#" class="btn btn-sm">View Details</a>
            </div>
        </div>
        <div class="product-card">
            <div class="product-image">
                <img src="${pageContext.request.contextPath}/images/product-placeholder.jpg" alt="Temperature Sensor">
            </div>
            <div class="product-details">
                <h3>DHT22 Temperature & Humidity Sensor</h3>
                <p class="product-description">Digital sensor for accurate temperature and humidity readings.</p>
                <p class="product-price">$9.95</p>
                <a href="#" class="btn btn-sm">View Details</a>
            </div>
        </div>
    </div>
    <div class="view-all">
        <a href="${pageContext.request.contextPath}/browse.jsp" class="btn btn-secondary">View All Products</a>
    </div>
</section>

<jsp:include page="/WEB-INF/includes/footer.jsp" />