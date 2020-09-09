<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page language="java" import="java.lang.*" import="java.sql.*" %>
 <%
 if(request.getParameter("submit")!=null)
 {
	 String question=request.getParameter("question");
	 String answer=request.getParameter("answer");
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/doubts","root","8973415069");
	pst=con.prepareStatement("insert into prekg(question,answer)values(?,?)");
	pst.setString(1,question);
	pst.setString(2,answer);
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
<title>Doubts </title>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css/">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css/">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="nav.css">

</head>
<style>
body{
 background: linear-gradient(to right, rgb(70, 13, 70) ,#078080);
 color:black;
 font-family: sans-serif;
 font-family: 28px;
 
}
</style>

<body>
<div style="background: linear-gradient(to left, rgb(103, 114, 2) ,#078080); padding-top:  10px;
padding-bottom: 0px;  " class="header">
  <h1 style="color: antiquewhite; margin-left: 600px;">VGURU</h1>
<h1 style="color:  rgb(70, 13, 70); margin-left: 480px;">T h e S m a r t T u t o r</h1> 
  <h1 style="color: antiquewhite; margin-left: 550px;">PREKG MENTOR Pannel</h1>
</div>

<div class="col-sm-6">
<div class="pannel-body">
<table style="color:yellow;" id="tbl-student" class="table table-responsive table-bordered" cellpadding="1" width="500%">
<thead>
<tr>
<th>QUESTIONS</th>
<th>ANSWERS</th>
<th>EDIT</th>
<th>DELETE</th>
</tr>
<%
Connection con;
PreparedStatement pst;
ResultSet rs;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/doubts","root","8973415069");

String query="select * from prekg";
Statement st=con.createStatement();
rs=st.executeQuery(query);
		while(rs.next())
		{
			String id=rs.getString("id");
			
		

%>

<tr style="color:white;">
<td><%=rs.getString("question")%></td>
<td><%=rs.getString("answer")%></td>
<td><a href="doubtsedit.jsp?id=<%=id%>">Edit</a></td>
<td><a href="prekgdelete.jsp?id=<%=id%>">Delete</a></td>
</tr>
<%
		}
%>

</table>
</div>


</div>
</div>

</body>
</html>