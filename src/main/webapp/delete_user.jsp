<%@page import="org.study.misc.ConnectionProvider"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String email=(String)session.getAttribute("EMAIL");
Connection con;
PreparedStatement pstm;
try{
	con=ConnectionProvider.createC();
	pstm=con.prepareStatement("delete from user where email=?");
	pstm.setString(1,email);
	pstm.executeUpdate();
	con.close();
	session.invalidate();
	response.sendRedirect("index.jsp");
}catch(Exception e){}
%>
</body>
</html>