<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="com.iotbay.model.User" scope="session" />

<%
    // Get form data
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    // Basic validation
    if (username == null || username.trim().isEmpty() || 
        password == null || password.trim().isEmpty()) {
        
        response.sendRedirect(request.getContextPath() + "/login.jsp?error=required");
        return;
    }
    
    // For the prototype, simulate login with demo credentials
    if (username.equals("demo") && password.equals("password")) {
        // Set JavaBean properties
        user.setUsername(username);
        user.setFullName("Demo User");
        user.setEmail("demo@example.com");
        
        // Redirect to welcome page
        response.sendRedirect(request.getContextPath() + "/welcome.jsp");
    } else {
        // Redirect back to login page with error message
        response.sendRedirect(request.getContextPath() + "/login.jsp?error=invalid");
    }
%>