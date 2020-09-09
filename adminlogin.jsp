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
String driver = "com.mysql.jdbc.Driver"; //this is the driver name
String userName ="root"; //this is mysql user name
String password="8973415069"; // this is mysql password
String ema=request.getParameter("ema");
String pass=request.getParameter("pass");
String std=request.getParameter("std");
Class.forName(driver);
con = DriverManager.getConnection(url,userName,password);
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from mentordetails");
boolean flag=false;
while(rs.next())
{
	 if((rs.getString(6).equals(ema))&&(rs.getString(8).equals(pass))){
		 String p=rs.getString("name");
			session.setAttribute("thewname",p);
		response.sendRedirect("admin.html");
		break;
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