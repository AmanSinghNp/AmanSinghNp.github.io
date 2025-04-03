</div>
    </main>
    <footer>
        <div class="container">
            <div class="footer-content">
                <div class="footer-section">
                    <h3>IoT Bay</h3>
                    <p>Your one-stop shop for IoT devices and components.</p>
                </div>
                <div class="footer-section">
                    <h3>Quick Links</h3>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
                        <li><a href="${pageContext.request.contextPath}/browse.jsp">Browse Products</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h3>Contact Us</h3>
                    <p><i class="fas fa-map-marker-alt"></i> 123 IoT Street, Sydney, Australia</p>
                    <p><i class="fas fa-phone"></i> (02) 1234 5678</p>
                    <p><i class="fas fa-envelope"></i> info@iotbay.com</p>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; <%= new java.util.Date().getYear() + 1900 %> IoT Bay. All rights reserved.</p>
            </div>
        </div>
    </footer>
        <script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>
</html>