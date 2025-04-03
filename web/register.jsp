<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:include page="/WEB-INF/includes/header.jsp">
    <jsp:param name="title" value="Register" />
</jsp:include>

<section class="auth-section">
    <div class="auth-container">
        <h2 class="auth-title">Create an Account</h2>
        
        <!-- Display error message if any -->
        <c:if test="${not empty param.error}">
            <div class="alert alert-danger">
                <c:choose>
                    <c:when test="${param.error eq 'exists'}">
                        Username or email already exists. Please choose another.
                    </c:when>
                    <c:when test="${param.error eq 'password'}">
                        Passwords do not match. Please try again.
                    </c:when>
                    <c:when test="${param.error eq 'invalid'}">
                        Please fill in all required fields correctly.
                    </c:when>
                    <c:otherwise>
                        An error occurred during registration. Please try again.
                    </c:otherwise>
                </c:choose>
            </div>
        </c:if>
        
        <form action="registerAction.jsp" method="post" class="auth-form">
            <div class="form-group">
                <label for="fullName">Full Name</label>
                <input type="text" id="fullName" name="fullName" class="form-control" required>
            </div>
            
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" class="form-control" required>
            </div>
            
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" class="form-control" required>
            </div>
            
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" class="form-control" required>
                <div class="form-help">
                    <small>Password must be at least 8 characters long and include at least one number.</small>
                </div>
            </div>
            
            <div class="form-group">
                <label for="confirmPassword">Confirm Password</label>
                <input type="password" id="confirmPassword" name="confirmPassword" class="form-control" required>
            </div>
            
            <div class="form-group form-check">
                <input type="checkbox" id="agree" name="agree" class="form-check-input" required>
                <label for="agree" class="form-check-label">I agree to the <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a></label>
            </div>
            
            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block">Register</button>
            </div>
            
            <div class="auth-footer">
                <p>Already have an account? <a href="${pageContext.request.contextPath}/login.jsp">Login here</a></p>
            </div>
        </form>
    </div>
</section>

<jsp:include page="/WEB-INF/includes/footer.jsp" />