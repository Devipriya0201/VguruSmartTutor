<%@ page language="java" import="java.lang.*" import="java.sql.*" %>
<%
String name=request.getParameter("name");
String lname=request.getParameter("lname");
String age=request.getParameter("age");
String std=request.getParameter("std");
String ema=request.getParameter("ema");
String mob=request.getParameter("mob");
String pass=request.getParameter("pass");


try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor","root","8973415069");
	Statement st=con.createStatement();
	st.executeUpdate("insert into mentordetails (name,lname,age,std,ema,mob,pass) values('"+name+"','"+lname+"','"+age+"','"+std+"','"+ema+"','"+mob+"','"+pass+"')");
	response.sendRedirect("mentor.jsp");
}
catch(Exception e)
{
	response.sendRedirect("error.html");
	}

%>
