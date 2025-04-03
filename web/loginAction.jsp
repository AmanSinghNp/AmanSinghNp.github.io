<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Get form data
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    // Basic validation - just check if fields aren't empty
    if (username == null || username.trim().isEmpty() || 
        password == null || password.trim().isEmpty()) {
        response.sendRedirect(request.getContextPath() + "/login.jsp?error=required");
        return;
    }
    
    // For prototype, accept ANY username/password combination
    // Create a user object for the session
    java.util.HashMap<String, Object> user = new java.util.HashMap<>();
    user.put("username", username);
    user.put("fullName", username); // Just use username as full name for prototype
    user.put("email", username + "@example.com");
    
    // Store user in session
    session.setAttribute("user", user);
    
    // Redirect to dashboard
    response.sendRedirect(request.getContextPath() + "/dashboard.jsp");
%>