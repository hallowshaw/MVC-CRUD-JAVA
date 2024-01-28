<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String str = request.getParameter("msg"); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #007BFF, #0056b3);
            color: #fff;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        h1 {
            color: #fff;
        }

        h3 {
            color: #dc3545; /* Error message color */
        }

        form {
            width: 50%;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            text-align: left;
            margin-bottom: 5px;
            color: #333;
        }

        input[type="email"],
        input[type="password"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin: 5px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"],
        input[type="reset"],
        input[type="button"] {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: #fff;
            background-color: #007BFF;
            border: none;
            border-radius: 5px;
            box-shadow: 0 2px #0056b3;
            transition: background-color 0.3s ease;
            margin-right: 5px;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover,
        input[type="button"]:hover {
            background-color: #0056b3; /* Darker color on hover */
        }

        .register-link {
            color: #fff;
            margin-top: 20px;
            display: block;
        }
        
        .register-link {
    color: #fff;
    margin-top: 20px;
    display: block;
    text-decoration: none;
}

.register-link:hover {
    text-decoration: underline; /* Underline on hover */
    color: #ccc; /* Change color on hover */
}
    </style>
</head>
<body>
    <h1>Login Form</h1>

    <% if ("invalid".equals(str)) { %>
    <h3 style="color: #fff;">Email or Password Error</h3>
<% } %>

    <form action="Login" method="post">
        <label for="uemail">Enter Email:</label>
        <input type="email" name="uemail" id="uemail"><br>

        <label for="upass">Enter Password:</label>
        <input type="password" name="upass" id="upass"><br><br>

        <input type="submit" value="Login">
        <input type="reset" value="Clear">
    </form>

    <a href="signup.jsp" class="register-link">Not registered yet? Register here</a>
</body>
</html>
