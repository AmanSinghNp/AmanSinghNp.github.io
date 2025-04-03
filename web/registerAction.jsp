<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Get form data
    String fullName = request.getParameter("fullName");
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    
    // Minimal validation - just make sure username isn't empty
    if (username == null || username.trim().isEmpty()) {
        response.sendRedirect(request.getContextPath() + "/register.jsp?error=invalid");
        return;
    }
    
    // For prototype, create user with minimal validation
    java.util.HashMap<String, Object> user = new java.util.HashMap<>();
    user.put("username", username);
    user.put("fullName", fullName != null ? fullName : username);
    user.put("email", email != null ? email : username + "@example.com");
    
    // Store user in session
    session.setAttribute("user", user);
    
    // Redirect to dashboard
    response.sendRedirect(request.getContextPath() + "/dashboard.jsp");
%>