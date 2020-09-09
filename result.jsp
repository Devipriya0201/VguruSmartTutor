<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

String url = "jdbc:mysql://localhost:3306/quiz?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
String driver = "com.mysql.jdbc.Driver";
String userName ="root";
String pass="8973415069";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection con = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Progress </title>
  <link rel = "icon" type = "image/png" href = "vgur.jpg"></head>

<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css/">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css/">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="nav.css">

</head>
<style>
body{

background-image:url(blend.gif); 
background-size: cover;
        background-attachment: fixed;
        height: 300%;
        width: 100%;
 color:white;
 font-family: sans-serif;
 font-family: 28px;
 
}
</style>
<body>
<div style="background:  linear-gradient(to right,rgb(70, 13, 70) ,#078080); padding-top:  10px;
 padding-top:  10px;
padding-bottom: 0px;  " class="header">
  <h2 style="color: antiquewhite; margin-left: 600px;">VGURU</h2>
<h2 style="color:  #CCCC00			; margin-left: 505px;">T h e S m a r t T u t o r</h2> 
</div>
<ul>
        <li><a href="stu13.html">Home</a></li>      
      </ul>
<body>
<h2>Name : <%= session.getAttribute("thename") %></h2>
<h2>Your Total Score : <%= session.getAttribute("thescore") %></h2>
<table style="color:yellow"  id="tbl-student" class="table table-responsive table-bordered" cellpadding="0" width="100%">
<tr>
<th>NO</th>
<th>QUESTION</th>
<th>YOUR ANSWER</th>
<th>CORRECT ANSWER</th>
</tr>
<%
try{
con = DriverManager.getConnection(url,userName,pass);
Statement st=con.createStatement();
String a=(String)session.getAttribute("thename");
String std=(String)session.getAttribute("thestd");

ResultSet resultSet=st.executeQuery("select * from scoreuser,prekg");
int nn=4;int z=1;
while(resultSet.next()){
	if(resultSet.getString("username").equals(a)&& resultSet.getString("std").equals(std)&& resultSet.getString("std1").equals(std)){
		
%>

<tr style="color:white;">
<td><%= z %></td>
<td><%=resultSet.getString("question") %></td>
<td><%=resultSet.getString(nn) %></td>
<td><%=resultSet.getString("correctans") %></td>
</tr>
<%
z++;
nn++;
}
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<br>
<div align="center"class="footer">
<h1>HAPPY LEARNING.......!</h1>
</div>
</body>
</html>