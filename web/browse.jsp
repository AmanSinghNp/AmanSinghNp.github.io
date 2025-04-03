<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/includes/header.jsp">
    <jsp:param name="title" value="Browse Products" />
</jsp:include>

<section class="browse-section">
    <div class="browse-header">
        <h1>Browse IoT Products</h1>
        <p>Discover our extensive range of IoT devices and components</p>
    </div>
    
    <div class="browse-container">
        <div class="filter-sidebar">
            <div class="filter-section">
                <h3>Categories</h3>
                <ul class="filter-list">
                    <li><a href="#" class="active">All Categories</a></li>
                    <li><a href="#">Development Boards</a></li>
                    <li><a href="#">Sensors</a></li>
                    <li><a href="#">Actuators</a></li>
                    <li><a href="#">Connectivity</a></li>
                    <li><a href="#">Power Supplies</a></li>
                    <li><a href="#">Accessories</a></li>
                </ul>
            </div>
            
            <div class="filter-section">
                <h3>Price Range</h3>
                <div class="price-range">
                    <input type="range" id="priceRange" min="0" max="500" step="10" value="500">
                    <div class="price-values">
                        <span>$0</span>
                        <span id="priceValue">$500</span>
                    </div>
                </div>
            </div>
            
            <div class="filter-section">
                <h3>Brand</h3>
                <div class="filter-checkbox">
                    <input type="checkbox" id="brand1" name="brand" value="Arduino">
                    <label for="brand1">Arduino</label>
                </div>
                <div class="filter-checkbox">
                    <input type="checkbox" id="brand2" name="brand" value="Raspberry Pi">
                    <label for="brand2">Raspberry Pi</label>
                </div>
                <div class="filter-checkbox">
                    <input type="checkbox" id="brand3" name="brand" value="Adafruit">
                    <label for="brand3">Adafruit</label>
                </div>
                <div class="filter-checkbox">
                    <input type="checkbox" id="brand4" name="brand" value="SparkFun">
                    <label for="brand4">SparkFun</label>
                </div>
                <div class="filter-checkbox">
                    <input type="checkbox" id="brand5" name="brand" value="Seeed Studio">
                    <label for="brand5">Seeed Studio</label>
                </div>
            </div>
            
            <div class="filter-section">
                <h3>Availability</h3>
                <div class="filter-checkbox">
                    <input type="checkbox" id="inStock" name="availability" value="inStock" checked>
                    <label for="inStock">In Stock</label>
                </div>
                <div class="filter-checkbox">
                    <input type="checkbox" id="outOfStock" name="availability" value="outOfStock">
                    <label for="outOfStock">Out of Stock</label>
                </div>
            </div>
            
            <div class="filter-actions">
                <button class="btn btn-primary btn-sm">Apply Filters</button>
                <button class="btn btn-secondary btn-sm">Reset</button>
            </div>
        </div>
        
        <div class="products-content">
            <div class="products-header">
                <div class="products-count">
                    <p>Showing <span>24</span> of <span>156</span> products</p>
                </div>
                <div class="products-sort">
                    <label for="sortBy">Sort by:</label>
                    <select id="sortBy" name="sortBy">
                        <option value="relevance">Relevance</option>
                        <option value="priceAsc">Price: Low to High</option>
                        <option value="priceDesc">Price: High to Low</option>
                        <option value="newest">Newest First</option>
                        <option value="bestSelling">Best Selling</option>
                    </select>
                </div>
            </div>
            
            <div class="products-grid">
                <!-- Product Cards - In a real app, these would be dynamically generated -->
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/images/product-placeholder.jpg" alt="Raspberry Pi 4">
                        <div class="product-badge">New</div>
                    </div>
                    <div class="product-details">
                        <h3>Raspberry Pi 4 Model B - 4GB</h3>
                        <p class="product-description">The latest Raspberry Pi computer with 4GB RAM.</p>
                        <div class="product-meta">
                            <p class="product-price">$89.95</p>
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                                <span>(127)</span>
                            </div>
                        </div>
                        <div class="product-actions">
                            <a href="product-details.jsp?id=1" class="btn btn-sm">View Details</a>
                            <button class="btn btn-primary btn-sm">Add to Cart</button>
                        </div>
                    </div>
                </div>
                
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/images/product-placeholder.jpg" alt="Arduino Uno">
                    </div>
                    <div class="product-details">
                        <h3>Arduino Uno Rev3</h3>
                        <p class="product-description">The most used and documented board in the Arduino family.</p>
                        <div class="product-meta">
                            <p class="product-price">$29.95</p>
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <span>(342)</span>
                            </div>
                        </div>
                        <div class="product-actions">
                            <a href="product-details.jsp?id=2" class="btn btn-sm">View Details</a>
                            <button class="btn btn-primary btn-sm">Add to Cart</button>
                        </div>
                    </div>
                </div>
                
                <div class="product-card">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/images/product-placeholder.jpg" alt="ESP32">
                    </div>
                    <div class="product-details">
                        <h3>ESP32 Development Board</h3>
                        <p class="product-description">Dual-core microcontroller with Wi-Fi and Bluetooth.</p>
                        <div class="product-meta">
                            <p class="product-price">$14.95</p>
                            <div class="product-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                                <span>(98)</span>
                            </div>
                        </div>
                        <div class="product-actions">
                            <a href="product-details.jsp?id=3" class="btn btn-sm">View Details</a>
                            <button class="btn btn-primary btn-sm">Add to Cart</button>
                        </div>
                    </div>
                </div>
                
                <!-- More product cards would go here -->
            </div>
            
            <div class="pagination">
                <a href="#" class="pagination-item active">1</a>
                <a href="#" class="pagination-item">2</a>
                <a href="#" class="pagination-item">3</a>
                <a href="#" class="pagination-item">4</a>
                <a href="#" class="pagination-item">5</a>
                <a href="#" class="pagination-item">Next »</a>
            </div>
        </div>
    </div>
</section>

<jsp:include page="/WEB-INF/includes/footer.jsp" />