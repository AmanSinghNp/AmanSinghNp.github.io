<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="com.iotbay.model.User" scope="session" />

<jsp:include page="/WEB-INF/includes/header.jsp">
    <jsp:param name="title" value="Welcome" />
</jsp:include>

<section class="welcome-section">
    <div class="container">
        <h1>Welcome, ${user.fullName}!</h1>
        <p>You have successfully logged in to IoT Bay.</p>
        
        <div class="welcome-actions">
            <a href="${pageContext.request.contextPath}/dashboard.jsp" class="btn btn-primary">Go to Dashboard</a>
            <a href="${pageContext.request.contextPath}/browse.jsp" class="btn btn-secondary">Browse Products</a>
        </div>
    </div>
</section>

<jsp:include page="/WEB-INF/includes/footer.jsp" />