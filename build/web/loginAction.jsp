<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Get form data
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String remember = request.getParameter("remember");
    
    // Basic validation
    if (username == null || username.trim().isEmpty() || 
        password == null || password.trim().isEmpty()) {
        
        // Redirect back to login page with error message
        response.sendRedirect(request.getContextPath() + "/login.jsp?error=required");
        return;
    }
    
    // For the prototype, we'll simulate a successful login with demo credentials
    // In a real application, this would check against a database
    if (username.equals("demo") && password.equals("password")) {
        // Create a user object for the session
        java.util.HashMap<String, Object> user = new java.util.HashMap<>();
        user.put("username", username);
        user.put("fullName", "Demo User");
        user.put("email", "demo@example.com");
        
        // Store user in session
        session.setAttribute("user", user);
        
        // Redirect to dashboard
        response.sendRedirect(request.getContextPath() + "/dashboard.jsp");
    } else {
        // Redirect back to login page with error message
        response.sendRedirect(request.getContextPath() + "/login.jsp?error=invalid");
    }
%>