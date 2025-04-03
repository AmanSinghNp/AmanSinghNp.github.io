<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="com.iotbay.model.User" scope="session" />

<%
    // Get form data
    String username = request.getParameter("username");
    String fullName = request.getParameter("fullName");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String confirmPassword = request.getParameter("confirmPassword");
    
    // Basic validation
    if (username == null || username.trim().isEmpty() || 
        fullName == null || fullName.trim().isEmpty() ||
        email == null || email.trim().isEmpty() ||
        password == null || password.trim().isEmpty() ||
        confirmPassword == null || confirmPassword.trim().isEmpty()) {
        
        response.sendRedirect(request.getContextPath() + "/register.jsp?error=invalid");
        return;
    }
    
    // Check if passwords match
    if (!password.equals(confirmPassword)) {
        response.sendRedirect(request.getContextPath() + "/register.jsp?error=password");
        return;
    }
    
    // For the prototype, simulate successful registration
    // In a real app, this would check for existing users and save to a database
    
    // Set JavaBean properties
    user.setUsername(username);
    user.setFullName(fullName);
    user.setEmail(email);
    
    // Redirect to welcome page
    response.sendRedirect(request.getContextPath() + "/welcome.jsp");
%>