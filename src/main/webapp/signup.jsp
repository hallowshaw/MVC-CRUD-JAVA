<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String str = request.getParameter("msg"); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Page</title>
    <meta http-equiv="refresh" content="<%= request.getParameter("delay") %> ;url=login.jsp">
    
    
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

        h4 {
            color: #28a745; /* Success message color */
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

        input[type="text"],
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
        input[type="reset"] {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: #fff;
            background-color: #4CAF50;
            border: none;
            border-radius: 5px;
            box-shadow: 0 2px #2E8B57;
            transition: background-color 0.3s ease;
            margin-right: 5px;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #45a049; /* Darker color on hover */
        }
        
        .success-message {
    color: #28a745;
    background-color: #d4edda;
    border: 1px solid #c3e6cb;
    padding: 10px;
    border-radius: 5px;
}

.error-message {
    color: #721c24;
    background-color: #f8d7da;
    border: 1px solid #f5c6cb;
    padding: 10px;
    border-radius: 5px;
}

.login-link {
    margin-top: 10px;
    text-align: center;
}

.login-link a {
    color: red;
    text-decoration: none;
}

.login-link a:hover {
    text-decoration: underline;
    color: brown; 
}

 #countdownMessage {
            font-size: 40px;  
            color: white;
            font-weight: bold;
        }
       
.success-message-container {
            font-weight: bold;
            font-size: 20px;
        }
        
    </style>
</head>
<body>

<% if (request.getParameter("delay") != null) { %>
        <p id="countdownMessage">Redirecting to login page in 3 seconds...</p>
        
        <div id="successMessageContainer" class="success-message-container">
            <h4 class="success-message" id="successMessage">Successfully Registered!</h4>
        </div>
        
        <script>
            var countdown = 3;

            function updateCountdown() {
                var countdownMessage = document.getElementById('countdownMessage');
                var regSuc = document.getElementById('successMessageContainer');

                if (countdown > 0) {
                	regSuc.textContent = 'Successfully Registered!';
                    countdownMessage.textContent = 'Redirecting to login page in ' + countdown + ' seconds...';
                    countdown -= 1;
                    setTimeout(updateCountdown, 1000); // Update every 1 second
                } else {
                    window.location.href = 'login.jsp';
                }
            }

            // Start the countdown when the page loads
            document.addEventListener('DOMContentLoaded', function() {
                updateCountdown();
            });
        </script>
    <% } else { %>
   
    <h1>Registration Form</h1>

    <% if ("valid".equals(str)) { %>
        <h4 style="color: white">Successfully Registered!</h4>
    <% } %>
    <% if ("invalid".equals(str)) { %>
        <h4 style="color: white">There are some issues!</h4>
    <% } %>

    <form action="Reg" method="post">
        <label for="uname">Enter Name:</label>
        <input type="text" name="uname" id="uname"><br>

        <label for="uemail">Enter Email:</label>
        <input type="email" name="uemail" id="uemail"><br>

        <label for="uphno">Enter Phno:</label>
        <input type="text" name="uphno" id="uphno"><br>

        <label for="uadd">Enter Address:</label>
        <input type="text" name="uadd" id="uadd"><br>

        <label for="upass">Enter Password:</label>
        <input type="password" name="upass" id="upass"><br><br>

        <input type="submit" value="Register">
        <input type="reset" value="Clear">
    </form>
    
    <div class="login-link">
    <p>Already a user? <a href="login.jsp">Log In here</a></p>
</div>
 <% } %>
</body>
</html>
