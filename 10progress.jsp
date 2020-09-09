<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page language="java" import="java.lang.*" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User details </title>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css/">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css/">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style>
body{
 background: linear-gradient(to right, grey ,white);
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

</div>
<ul>
        <button style="height:40px;width:100px;"><a href="stu13.html">Home</a></button>
        </ul>


<div class="col-sm-8">
<div class="pannel-body">
<table  id="tbl-student" class="table table-responsive table-bordered" cellpadding="0" width="100%">
<thead>
<tr>
<th>FirstName</th>
<th>LastName</th>
<th>Standard</th>
<th>Score</th>

</tr>
<%
Connection con;
PreparedStatement pst;
ResultSet rs;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor","root","8973415069");

String query="select * from userdetailss where std='10th'";
Statement st=con.createStatement();
rs=st.executeQuery(query);
		while(rs.next())
		{
			String id=rs.getString("id");
			
		

%>

<tr>
<td><%=rs.getString("name")%></td>
<td><%=rs.getString("lname")%></td>
<td><%=rs.getString("std")%></td>
<td><%=rs.getString("score")%></td>

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