<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page language="java" import="java.lang.*" import="java.sql.*" %>
  <%
 if(request.getParameter("submit")!=null)
 {
	 String id=request.getParameter("id");
	 String heading=request.getParameter("heading");
	 String question=request.getParameter("question");
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor","root","8973415069");
	pst=con.prepareStatement("update faq set heading=?,question=? where id=?");
	pst.setString(1,heading);
	pst.setString(2,question);
	pst.setString(3,id);
	pst.executeUpdate();

	%>
	<script>
	alert("Questions updated");
	</script>
	<% 
 }	 	 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EditFAQ </title>
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
 color:black;
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
        <li><a href="10faq.jsp">Home</a></li>      
      </ul>
</div>
<h1 style="color:white;">Update Questions </h1>
<div class="row">
<div class="col-sm-4">
<form style="margin-top:10px;" class="card" method="POST" action="#">
<%
Connection con;
PreparedStatement pst;
ResultSet rs;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor","root","8973415069");
String id=request.getParameter("id");
pst=con.prepareStatement("select * from faq where id=?");
pst.setString(1,id);
rs=pst.executeQuery();
while(rs.next())
{
	
%>

<div align="right">
<lable class="form-lable"></lable><br>
<textarea style="height:200px;width:390px" name="heading"><%= rs.getString("heading")%></textarea>
</div>
<br><br>

<div align="right">
<lable class="form-lable"></lable><br>
<textarea style="height:200px;width:390px" name="question"><%= rs.getString("question")%></textarea>
</div>
  <br><br>

<%
}
%>
<br><br>
<div align="right">
<input type="submit" style="margin-top:30px" id="submit" value="submit" name="submit" class="btn-info">
<br><br>
</form>
</div>

</body>
</html>
