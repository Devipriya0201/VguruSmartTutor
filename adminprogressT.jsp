 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

String url = "jdbc:mysql://localhost:3306/smarttutor?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
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
.j{
  background-color: yellow;
	border: 1px solid yellow;
	border-radius: 4px;
	color: black;
	display: block;
	font-family: inherit;
	font-size: 16px;
  padding: 5px;
    margin-top:5px;
    height:30px;
    width:70px;
    text-decoration:none;
    margin-left:40%;
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
        <li><a href="admin.html">Home</a></li>   
              
      </ul>
      <form action="adminprogressT.jsp">
<select style="padding-left:10px;padding-right:10px;padding-top:10px;padding-bottom:10px;margin-left:40px;color:black" name="std" >
<option>Select the Standard</option>
							
							<option value="prekg">PREKG</option>
							<option value="lkg">LKG</option>
                             <option value="ukg">UKG</option>
                             <option value="1st">1st Standard</option>
                             <option value="2nd">2nd Standard</option>
                             <option value="3rd">3rd Standard</option>
                             <option value="4th">4th Standard</option>
                             <option value="5th">5th Standard</option>
                             <option value="6th">6th Standard</option>
                             <option value="7th">7th Standard</option>
                             <option value="8th">8th Standard</option>
                             <option value="9th">9th Standard</option>
                             <option value="10th">10th Standard</option>
                             <option value="11th">11th Biology</option> 
                             <option value="1thCS">11th ComputerScience</option>  
                             <option value="11thC">11th Commerce</option>                           
                             <option value="12th">12th Biology</option>                           
                             <option value="12thCS">12th ComputerScience</option>                           
                             <option value="12thC">12th Commerce</option>                           
                                                                         
</select>
<div align="left">
<input style="margin-top:20px;margin-left:200px;"type="submit" id="submit" value="submit" name="submit" class="btn-info">
</div>
</form>

<body>
 <table  style="color:white;" id="tbl-student" class="table table-responsive table-bordered" cellpadding="0" width="100%">
<tr style="color:yellow;" >
<th>NO</th>
<th>STUDENT NAME</th>
<th>SCORE</th>
<th>DATE</th>
<th>TIME</th>
<th>ACTION</th>
</tr>
<%
try{
con = DriverManager.getConnection(url,userName,pass);
Statement st=con.createStatement();
String std=request.getParameter("std");
ResultSet resultSet=st.executeQuery("select * from score");
int x=1;
while(resultSet.next()){
	if(resultSet.getString("std1").equals(std)){
%>
<tr>
<td><%=x %></td>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("finalscore") %></td>
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("time") %></td>
<td class="text-center">
<a href="viewstudent.jsp?username=<%=resultSet.getString("username")%>" class="j">View</a></td>
</tr>
<%
x++;
}
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>
