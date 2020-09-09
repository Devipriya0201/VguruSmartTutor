<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page language="java" import="java.lang.*" import="java.sql.*" %>
 <%
 if(request.getParameter("submit")!=null)
 {
	 String question=request.getParameter("question");
	 String option1=request.getParameter("option1");
	 String option2=request.getParameter("option2");
	 String option3=request.getParameter("option3");
	 String option4=request.getParameter("option4"); 
	 String correct=request.getParameter("correct"); 
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz","root","8973415069");
	pst=con.prepareStatement("insert into prekg(question,option1,option2,option3,option4,correct)values(?,?,?,?,?)");
	pst.setString(1,question);
	pst.setString(2,option1);
	pst.setString(3,option2);
	pst.setString(4,option3);
	pst.setString(5,option4);
	pst.setString(5,correct);
	pst.executeUpdate();

	%>
	<script>
	alert("record added");
	</script>
	<% 
 }	 	 
 %>
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
        <button style="height:40px;width:100px;"><a href="nav.html">Home</a></button>
        </ul>
<h1 style="color:white;">Add questions details</h1>
<div class="row">
<div class="col-sm-4">
<form style="margin-top:10px;" class="card" method="POST" action="#">


<div align="right">
<lable class="form-lable"></lable><br>
<input style="height:40px;width:390px" type="text" class="form-controler" placeholder="Enter the question " name="name" id="name" required>
</div>
<br><br>

<div align="right">
<lable class="form-lable"></lable>
<input style="height:40px;width:390px" type="text" class="form-controler" placeholder="option1" name="lname" id="name" required>
</div>
<br><br>

<div align="right">
<lable class="form-lable"></lable>
<input style="height:40px;width:390px" type="text" class="form-controler" placeholder="option2" name="age" id="name" required>
</div>
<br><br>


<div align="right">
<lable class="form-lable"></lable>
<input style="height:40px;width:390px" type="text" class="form-controler" placeholder="option3" name="ema" id="name" required>
</div>
<br><br>

<div align="right">
<lable class="form-lable"></lable>
<input style="height:40px;width:390px" type="text" class="form-controler" placeholder="option4" name="pname" id="name" required>
</div>
<br><br>

<div align="right">
<lable class="form-lable"></lable>
<input style="height:40px;width:390px" type="text" class="form-controler" placeholder="answer" name="mob" id="name" required>
</div>
<br><br>

<div align="right">
<input type="submit" id="submit" value="submit" name="submit" class="btn-info">
<input type="reset" id="reset" value="reset" name="reset" class="btn-warning">
<br><br>
</div>


</form>
</div>


<div class="col-sm-8">
<div class="pannel-body">
<table  id="tbl-student" class="table table-responsive table-bordered" cellpadding="0" width="100%">
<thead>
<tr>
<th>Question</th>
<th>option1</th>
<th>option2</th>
<th>option3</th>
<th>option3</th>
<th>option4</th>
<th>correct</th>
</tr>
<%
Connection con;
PreparedStatement pst;
ResultSet rs;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz","root","8973415069");

String query="select * from prekg";
Statement st=con.createStatement();
rs=st.executeQuery(query);
		while(rs.next())
		{
			String id=rs.getString("id");
			
		

%>

<tr>
<td><%=rs.getString("question")%></td>
<td><%=rs.getString("option1")%></td>
<td><%=rs.getString("option2")%></td>
<td><%=rs.getString("option3")%></td>
<td><%=rs.getString("option4")%></td>
<td><%=rs.getString("correct")%></td>
<td><a href="update.jsp?id=<%=id%>">Edit</a></td>
<td><a href="delete.jsp?id=<%=id%>">Delete</a></td>

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