<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="org.study.misc.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User Details</title>
<style>


        body {
            font-family: Arial, sans-serif;
        }

        h2 {
            text-align: center;
        }

        form {
            width: 50%;
            margin: 0 auto;
        }

        label {
            display: block;
            margin-top: 10px;
        }

        input[type=text] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=submit], #see {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            color: white;
        }

        input[type=submit] {
            background-color: #4CAF50;
            transition: background-color 0.3s ease;
        }

        #see {
            background-color: #808080;
            transition: background-color 0.3s ease;
        }

        input[type=submit]:hover {
            background-color: #387a3b;
        }
        
        #see:hover {
        	background-color: #5b5656;
        }

        div {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
            margin-top: 20px;
        }

        h3 {
            color: green;
            text-align: center;
        }
</style>
</head>
<body>
<%
String email=(String)session.getAttribute("EMAIL");
Connection con;
PreparedStatement pstm;
ResultSet rs;
String name=null;
String email2=null;
String phno=null;
String add=null;
try{
	con=ConnectionProvider.createC();
	pstm=con.prepareStatement("select *from user where email=?");
	pstm.setString(1,email);
	rs=pstm.executeQuery();
	while(rs.next())
	{
		name=rs.getString(1);
		email2=rs.getString(2);
	    phno=rs.getString(3);
	    add=rs.getString(4);
	}
}catch(Exception e){}
%>
<h2>Update User Details</h2>

<%String str=request.getParameter("msg"); 
if("valid".equals(str))
{
%>
<h3>Record Successfully Updated!</h3>
<%} %>
<div>
  <form action="update_data.jsp"  method="post" "multipart/form-data" >
    <label for="fname">Name </label>
    <input type="text"  name="uname" value=<%=name %> >

    <label for="lname">Email</label>
    <input type="text"  name="uemail" value=<%= email2%>>

   <label for="lname">Phno</label>
    <input type="text"  name="uphno" value=<%=phno %>>
    
    <label for="lname">Address</label>
    <input type="text"  name="uadd" value=<%=add %>>
    <input type="submit" value="Submit">
    
    <% if ("valid".equals(str)) { %>
            <button id="see" type="button" onclick="window.location.href='Profile.jsp'">See Updated Profile</button>
        <% } %>
    
  </form>
  
</div>


</body>
</html>