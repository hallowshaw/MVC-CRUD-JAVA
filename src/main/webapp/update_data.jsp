<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="java.sql.*" %>
    <%@page import="org.study.misc.ConnectionProvider" %>
<%
String name=request.getParameter("uname");
String email=request.getParameter("uemail");
String phno=request.getParameter("uphno");
String add=request.getParameter("uadd");
Connection con;
PreparedStatement pstm;
try{
	con=ConnectionProvider.createC();
	
	
	pstm=con.prepareStatement("update user set name=?,phno=?,address=? where email=?");
	pstm.setString(4, email);
	pstm.setString(1,name);
	pstm.setString(2,phno);
	pstm.setString(3,add);
	pstm.executeUpdate();
	con.close();
	response.sendRedirect("update_form.jsp?msg=valid");
}catch (Exception e){}
%>