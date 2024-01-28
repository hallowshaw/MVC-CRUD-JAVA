<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="org.study.misc.ConnectionProvider" %>
<% String email=(String)session.getAttribute("EMAIL");%>
<%
    Connection con= ConnectionProvider.createC();
    PreparedStatement pstm=con.prepareStatement("select * from user where email=?");
    pstm.setString(1,email);
    ResultSet rs=pstm.executeQuery();
    String name=null;
    String email2=null;
    String phno=null;
    String add=null;
    while(rs.next())
    {
      name = rs.getString(1);
      email2 = rs.getString(2);
      phno = rs.getString(3);
      add = rs.getString(4);
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Profile</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #007BFF, #0056b3);
            color: #fff;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        h1 {
            font-size: 36px;
            margin-bottom: 20px;
        }

        ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        li {
            font-size: 18px;
            margin-bottom: 15px;
            opacity: 0;
            animation: fadeIn 1s ease-out forwards;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        a {
            text-decoration: none;
            display: inline-block;
            padding: 15px 30px;
            font-size: 20px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: #fff;
            background-color: #4CAF50;
            border: none;
            border-radius: 8px;
            box-shadow: 0 4px #2E8B57;
            transition: background-color 0.3s ease;
            margin: 15px;
        }

        a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>User Profile</h1>
    <ul>
        <li><strong>Name:</strong> <%= name %></li>
        <li><strong>Email:</strong> <%= email2 %></li>
        <li><strong>Phone Number:</strong> <%= phno %></li>
        <li><strong>Address:</strong> <%= add %></li>
    </ul>
    <a href="update_form.jsp" class="button">Update</a>
    <a href="delete_user.jsp" class="button">Delete</a>
</body>
</html>
