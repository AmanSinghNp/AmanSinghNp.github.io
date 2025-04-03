package com.iotbay.model;

import java.io.Serializable;

public class User implements Serializable {
    private String username;
    private String fullName;
    private String email;
    
    // Default constructor (required for JavaBeans)
    public User() {
    }
    
    // Getters and Setters
    public String getUsername() { return username; }
    public void setUsername(String username) { this.username = username; }
    
    public String getFullName() { return fullName; }
    public void setFullName(String fullName) { this.fullName = fullName; }
    
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
}