<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:include page="/WEB-INF/includes/header.jsp">
    <jsp:param name="title" value="Login" />
</jsp:include>

<section class="auth-section">
    <div class="auth-container">
        <h2 class="auth-title">Login to Your Account</h2>
        
        <!-- Display error message if any -->
        <c:if test="${not empty param.error}">
            <div class="alert alert-danger">
                <c:choose>
                    <c:when test="${param.error eq 'invalid'}">
                        Invalid username or password. Please try again.
                    </c:when>
                    <c:when test="${param.error eq 'required'}">
                        Username and password are required.
                    </c:when>
                    <c:otherwise>
                        An error occurred. Please try again.
                    </c:otherwise>
                </c:choose>
            </div>
        </c:if>
        
        <!-- Display success message if any -->
        <c:if test="${not empty param.success}">
            <div class="alert alert-success">
                <c:choose>
                    <c:when test="${param.success eq 'registered'}">
                        Registration successful! You can now login.
                    </c:when>
                    <c:when test="${param.success eq 'logout'}">
                        You have been successfully logged out.
                    </c:when>
                    <c:otherwise>
                        Operation completed successfully.
                    </c:otherwise>
                </c:choose>
            </div>
        </c:if>
        
        <form action="loginAction.jsp" method="post" class="auth-form">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" class="form-control" required>
            </div>
            
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" class="form-control" required>
                <div class="form-help">
                    <a href="#">Forgot your password?</a>
                </div>
            </div>
            
            <div class="form-group form-check">
                <input type="checkbox" id="remember" name="remember" class="form-check-input">
                <label for="remember" class="form-check-label">Remember me</label>
            </div>
            
            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block">Login</button>
            </div>
            
            <div class="auth-footer">
                <p>Don't have an account? <a href="${pageContext.request.contextPath}/register.jsp">Register here</a></p>
            </div>
        </form>
    </div>
</section>

<jsp:include page="/WEB-INF/includes/footer.jsp" />