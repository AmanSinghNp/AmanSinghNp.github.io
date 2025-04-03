package com.iotbay.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.iotbay.model.User;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Get form data
        String fullName = request.getParameter("fullName");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String agree = request.getParameter("agree");
        
        // Basic validation
        if (fullName == null || fullName.trim().isEmpty() ||
            username == null || username.trim().isEmpty() || 
            email == null || email.trim().isEmpty() ||
            password == null || password.trim().isEmpty()) {
            
            response.sendRedirect(request.getContextPath() + "/register.jsp?error=invalid");
            return;
        }
        
        // Check passwords match
        if (!password.equals(confirmPassword)) {
            response.sendRedirect(request.getContextPath() + "/register.jsp?error=password");
            return;
        }
        
        // Check terms agreement
        if (agree == null) {
            response.sendRedirect(request.getContextPath() + "/register.jsp?error=terms");
            return;
        }
        
        // For the prototype, simulate successful registration
        // Create user bean
        User user = new User();
        user.setUsername(username);
        user.setFullName(fullName);
        user.setEmail(email);
        
        // Store user in session
        HttpSession session = request.getSession();
        session.setAttribute("user", user);
        
        // Redirect to welcome page
        response.sendRedirect(request.getContextPath() + "/welcome.jsp");
    }
}