<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String str = (String) session.getAttribute("EMAIL"); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #007BFF, #0056b3); /* Gradient background */
            color: #fff;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        h1 {
            color: #fff;
        }

        a {
            text-decoration: none;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: #fff;
            background-color: #4CAF50; /* Updated button color */
            border: none;
            border-radius: 5px;
            box-shadow: 0 2px #2E8B57; /* Updated box shadow */
            transition: background-color 0.3s ease;
            margin: 5px;
        }

        .button:hover {
            background-color: #45a049; /* Darker color on hover */
        }

        #welcome-container {
            margin-top: 20px;
            font-size: 24px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h1>Welcome To Crud Operations</h1>
    
    <a href="signup.jsp" class="button">Sign Up</a>
    <a href="login.jsp" class="button">Log In</a>
    <a href="logout.jsp" class="button">Log Out</a>
    
    <% if (str != null) { %>
        <a href="Profile.jsp" class="button">Profile</a>
    <% } %>

    <div id="welcome-container">
        <% if (str == null) {
            str = "guest";
        } %>
        <%= "Hello, " + str + "!" %>
    </div>
</body>
</html>
