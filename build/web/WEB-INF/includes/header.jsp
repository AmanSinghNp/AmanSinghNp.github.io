<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${param.title} - IoT Bay</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <header>
        <div class="container">
            <a href="${pageContext.request.contextPath}/index.jsp" class="logo">
                <i class="fas fa-microchip"></i> IoT Bay
            </a>
            <nav>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
                    <li><a href="${pageContext.request.contextPath}/browse.jsp">Browse</a></li>
                    <c:choose>
                        <c:when test="${not empty sessionScope.user}">
                            <li><a href="${pageContext.request.contextPath}/dashboard.jsp">Dashboard</a></li>
                            <li><a href="${pageContext.request.contextPath}/logout.jsp">Logout</a></li>
                        </c:when>
                        <c:otherwise>
                            <li><a href="${pageContext.request.contextPath}/login.jsp">Login</a></li>
                            <li><a href="${pageContext.request.contextPath}/register.jsp">Register</a></li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </nav>
        </div>
    </header>
    <main>
        <div class="container">