<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page language="java" import="java.lang.*" import="java.sql.*" %>
 <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddQuiz </title>
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
        <li><a href="men13.html">Home</a></li>       
              
      </ul>
<h1 style="color:white;">Edit Quiz </h1>
<h1 style="color:white;margin-left:1000px;margin-top:-50px;">MARKS : 10*10=100 </h1>

<table style="color:yellow"  id="tbl-student" class="table table-responsive table-bordered" cellpadding="0" width="100%">
<tr>
<th>NO</th>
<th>QUESTION</th>
<th>OPTION 1</th>
<th>OPTION 2</th>
<th>OPTION 3</th>
<th>OPTION 4</th>
<th>CORRECT ANSWER</th>
<th>ACTION</th>
</tr>


<%
Connection con;
PreparedStatement pst;
ResultSet rs;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor","root","8973415069");
String std=(String)session.getAttribute("theeestd");
String query="select * from quiz";
Statement st=con.createStatement();
rs=st.executeQuery(query);
		while(rs.next())
		{
			if(rs.getString("std").equals(std)){
			String id=rs.getString("idd");
			
		

%>
<tr style="color:white;">
<td><%=rs.getString("idd")%></td>
<td><%=rs.getString("question")%></td>
<td><%=rs.getString("option1")%></td>
<td><%=rs.getString("option2")%></td>
<td><%=rs.getString("option3")%></td>
<td><%=rs.getString("option4")%></td>
<td><%=rs.getString("correctans")%></td>
<td><a href="quizupdate.jsp?id=<%=id%>" class="j">Edit</a></td>
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