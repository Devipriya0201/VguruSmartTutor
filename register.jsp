<%@ page language="java" import="java.lang.*" import="java.sql.*" %>
<%
String name=request.getParameter("name");
String lname=request.getParameter("lname");
String age=request.getParameter("age");
String std=request.getParameter("std");
String ema=request.getParameter("ema");
String pname=request.getParameter("pname");
String mob=request.getParameter("mob");
String pass=request.getParameter("pass");


try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor","root","8973415069");
	Statement st=con.createStatement();
	st.executeUpdate("insert into userdetailss (name,lname,age,std,ema,pname,mob,pass) values('"+name+"','"+lname+"','"+age+"','"+std+"','"+ema+"','"+pname+"','"+mob+"','"+pass+"')");
	response.sendRedirect("index.html");
}
catch(Exception e)
{
	response.sendRedirect("error.html");
	}

%>
