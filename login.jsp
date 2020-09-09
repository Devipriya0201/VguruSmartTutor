<%@ page language="java" import="java.lang.*" import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/smarttutor?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";	
String driver = "com.mysql.jdbc.Driver"; 
String userName ="root"; 
String password="8973415069"; 
String ema=request.getParameter("ema");
String pass=request.getParameter("pass");
String std=request.getParameter("std");
session.setAttribute("thestd",std);
//out.println(ema);
Class.forName(driver);
con = DriverManager.getConnection(url,userName,password);
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from userdetailss where ema='"+ema+"'");
if(rs.next())
{
	 if((rs.getString(5).equals("prekg"))&&(rs.getString(9).equals(pass))){
		String p=rs.getString("name");
		String p1=rs.getString("lname");
		session.setAttribute("thename",p);
		session.setAttribute("thelname", p1);
		response.sendRedirect("stu13.html");
		
	}
	else if((rs.getString(5).equals("lkg"))&&(rs.getString(9).equals(pass))){
		String p=rs.getString("name");
		String p1=rs.getString("lname");
		session.setAttribute("thename",p);
		session.setAttribute("thelname", p1);
		response.sendRedirect("stu13.html");
		
	}
	else if((rs.getString(5).equals("ukg"))&&(rs.getString(9).equals(pass))){
		String p=rs.getString("name");
		String p1=rs.getString("lname");
		session.setAttribute("thename",p);
		session.setAttribute("thelname", p1);
		response.sendRedirect("stu13.html");

	}
	else if((rs.getString(5).equals("1st"))&&(rs.getString(9).equals(pass))){
		String p=rs.getString("name");
		String p1=rs.getString("lname");
		session.setAttribute("thename",p);
		session.setAttribute("thelname",p1);
		response.sendRedirect("stu13.html");
		
	}
	else if((rs.getString(5).equals("2nd"))&&(rs.getString(9).equals(pass))){
		String p=rs.getString("name");
		String p1=rs.getString("lname");
		session.setAttribute("thename",p);
		response.sendRedirect("stu13.html");
		
	}
	else if((rs.getString(5).equals("3rd"))&&(rs.getString(9).equals(pass))){
		String p=rs.getString("name");
		String p1=rs.getString("lname");
		session.setAttribute("thename",p);
		session.setAttribute("thelname", p1);
		response.sendRedirect("stu13.html");
	}
	else if((rs.getString(5).equals("4th"))&&(rs.getString(9).equals(pass))){
		String p=rs.getString("name");
		String p1=rs.getString("lname");
		session.setAttribute("thename",p);
		session.setAttribute("thelname", p1);
		response.sendRedirect("stu13.html");
	}
	else if((rs.getString(5).equals("5th"))&&(rs.getString(9).equals(pass))){
		String p=rs.getString("name");
		String p1=rs.getString("lname");
		session.setAttribute("thename",p);
		session.setAttribute("thelname", p1);
		response.sendRedirect("stu13.html");
	}
	else if((rs.getString(5).equals("6th"))&&(rs.getString(9).equals(pass))){
		String p=rs.getString("name");
		String p1=rs.getString("lname");
		session.setAttribute("thename",p);
		session.setAttribute("thelname", p1);
		response.sendRedirect("stu13.html");
	
	}
	else if((rs.getString(5).equals("7th"))&&(rs.getString(9).equals(pass))){
		String p=rs.getString("name");
		String p1=rs.getString("lname");
		session.setAttribute("thename",p);
		session.setAttribute("thelname", p1);
		response.sendRedirect("stu13.html");
	
	}
	else if((rs.getString(5).equals("8th"))&&(rs.getString(9).equals(pass))){
		String p=rs.getString("name");
		String p1=rs.getString("lname");
		session.setAttribute("thename",p);
		response.sendRedirect("stu13.html");
	
	}
	else if((rs.getString(5).equals("9th"))&&(rs.getString(9).equals(pass))){
		String p=rs.getString("name");
		String p1=rs.getString("lname");
		session.setAttribute("thename",p);
		session.setAttribute("thelname", p1);
		response.sendRedirect("stu13.html");
		
	}
	else if((rs.getString(5).equals("10th"))&&(rs.getString(9).equals(pass))){
		String p=rs.getString("name");
		String p1=rs.getString("lname");
		session.setAttribute("thename",p);
		session.setAttribute("thelname", p1);
		response.sendRedirect("stu13.html");
	
	}
	else if((rs.getString(5).equals("11th"))&&(rs.getString(9).equals(pass))){
		String p=rs.getString("name");
		String p1=rs.getString("lname");
		session.setAttribute("thename",p);
		session.setAttribute("thelname", p1);
		response.sendRedirect("stu13.html");
	
	}
	else if((rs.getString(5).equals("11thCS"))&&(rs.getString(9).equals(pass))){
		String p=rs.getString("name");
		String p1=rs.getString("lname");
		session.setAttribute("thename",p);
		session.setAttribute("thelname", p1);
		response.sendRedirect("stu13.html");
	}
	else if((rs.getString(5).equals("11thC"))&&(rs.getString(9).equals(pass))){
		String p=rs.getString("name");
		String p1=rs.getString("lname");
		session.setAttribute("thename",p);
		session.setAttribute("thelname", p1);
		response.sendRedirect("stu13.html");
	}
	else if((rs.getString(5).equals("12th"))&&(rs.getString(9).equals(pass))){
		String p=rs.getString("name");
		String p1=rs.getString("lname");
		session.setAttribute("thename",p);
		session.setAttribute("thelname", p1);
		response.sendRedirect("stu13.html");
	
	}
	else if((rs.getString(5).equals("12thCS"))&&(rs.getString(9).equals(pass))){
		String p=rs.getString("name");
		String p1=rs.getString("lname");
		session.setAttribute("thename",p);
		session.setAttribute("thelname", p1);
		response.sendRedirect("stu13.html");
	}
	else if((rs.getString(5).equals("12thC"))&&(rs.getString(9).equals(pass))){
		String p=rs.getString("name");
		String p1=rs.getString("lname");
		session.setAttribute("thename",p);
		session.setAttribute("thelname", p1);
		response.sendRedirect("stu13.html");
	}
	else{
		%>
		<script>
		alert("Enter the valid Registered Details");
		</script>
		<% 
		

	}
}
%>
</body>
</html>