package com.iotbay.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.iotbay.model.User;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Get form data
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String remember = request.getParameter("remember");
        
        // Basic validation
        if (username == null || username.trim().isEmpty() || 
            password == null || password.trim().isEmpty()) {
            
            response.sendRedirect(request.getContextPath() + "/login.jsp?error=required");
            return;
        }
        
        // For the prototype, simulate login with demo credentials
        if (username.equals("demo") && password.equals("password")) {
            // Create user bean
            User user = new User();
            user.setUsername(username);
            user.setFullName("Demo User");
            user.setEmail("demo@example.com");
            
            // Store user in session
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            
            // Redirect to welcome page
            response.sendRedirect(request.getContextPath() + "/welcome.jsp");
        } else {
            // Redirect back to login page with error message
            response.sendRedirect(request.getContextPath() + "/login.jsp?error=invalid");
        }
    }
}