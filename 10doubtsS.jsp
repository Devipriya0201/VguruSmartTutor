<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page language="java" import="java.lang.*" import="java.sql.*" %>
 <%
 if(request.getParameter("submit")!=null)
 {
	 String question=request.getParameter("question");
	 String answer=request.getParameter("answer");
	 String std=(String)session.getAttribute("thestd");
	 String name=(String)session.getAttribute("thename");
	 String lname=(String)session.getAttribute("thelname");
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor","root","8973415069");
	pst=con.prepareStatement("insert into doubts(question,answer,std,name,lname)values(?,?,?,?,?)");
	pst.setString(1,question);
	pst.setString(2,answer);
	pst.setString(3,std);
	pst.setString(4,name);
	pst.setString(5,lname);
		pst.executeUpdate();

	%>
	<script>
	alert("Doubts added");
	</script>
	<% 
 }	 	 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AskDoubts </title>
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
        <li><a href="stu13.html">Home</a></li>      
      </ul>
<h1 style="color:white;">Add Doubts </h1>
<div  class="row">
<div class="col-sm-4">
<form style="margin-top:10px;" class="card" method="POST" action="#">

<div align="center">
<lable class="form-lable"></lable><br>
<textarea style="height:200px;width:490px ;" type="text" class="form-controler"placeholder="Type your Doubts.." name="question" id="name" ></textarea>
</div>
  <br><br>
</div>
<br><br>


<div align="left">
<input style="margin-top:300px"type="submit" id="submit" value="submit" name="submit" class="btn-info">
<br><br>
</div>


</form>
</div>


<div class="col-sm-6">
<div class="pannel-body">
<table style="color:yellow;margin-left:350px;" id="tbl-student" class="table table-responsive table-bordered" cellpadding="1" width="500%">
<thead>
<tr>
<p style="color:white;margin-left:100px">NOTE:Wait!Your doubt will be clear while your mentor views your doubt</p>
<th>NAME</th>
<th>QUESTIONS</th>
<th>ANSWERS</th>
</tr>
<%
Connection con;
PreparedStatement pst;
ResultSet rs;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor","root","8973415069");
String name=(String)session.getAttribute("thename");
String std=(String)session.getAttribute("thestd");
String query="select * from doubts";
Statement st=con.createStatement();
rs=st.executeQuery(query);
		while(rs.next())
		{
			if(rs.getString("std").equals(std)&&rs.getString("name").equals(name)){
			String id=rs.getString("id");

%>

<tr style="color:white;">
<td><%= session.getAttribute("thename")+""+session.getAttribute("thelname") %></td>
<td><%=rs.getString("question")%> </td>
<td><%=rs.getString("answer")%> </td>
</tr>
<%
		}
		}
%>

</table>
</div>


</div>
</div>

</body>
</html>