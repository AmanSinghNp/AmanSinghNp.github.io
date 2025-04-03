<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Invalidate the session
    session.invalidate();
    
    // Redirect to login page with success message
    response.sendRedirect(request.getContextPath() + "/login.jsp?success=logout");
%>