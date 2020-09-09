<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page language="java" import="java.lang.*" import="java.sql.*" %>
    
    <%
 if(request.getParameter("submit")!=null)
 {
	 String id=request.getParameter("id");
	 String name=request.getParameter("name");
	 String lname=request.getParameter("lname");
	 String age=request.getParameter("age");
	 String std=request.getParameter("std");
	 String ema=request.getParameter("ema");
	 String pname=request.getParameter("pname");
	 String mob=request.getParameter("mob");
	 String pass=request.getParameter("pass");	 
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor","root","8973415069");
	pst=con.prepareStatement("update userdetailss set name=?,lname=?,age=?,std=?,ema=?,pname=?,mob=?,pass=? where id=?");
	pst.setString(1,name);
	pst.setString(2,lname);
	pst.setString(3,age);
	pst.setString(4,std);
	pst.setString(5,ema);
	pst.setString(6,pname);
	pst.setString(7,mob);
	pst.setString(8,pass);
	pst.setString(9,id);
	pst.executeUpdate();

	%>
	<script>
	alert("details updated");
	</script>
	<% 
 }	 	 
 %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UpdateStudents</title>
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
    margin-left:10%;
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
        <li><a href="10studentprofile.jsp">Home</a></li>   
              
      </ul>
<h1 style="color:white">Update The Details</h1>
<div class="row">
<div class="col-sm-4">
<form class="card" method="POST" action="#">
<%
Connection con;
PreparedStatement pst;
ResultSet rs;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor","root","8973415069");
String id=request.getParameter("id");
pst=con.prepareStatement("select * from userdetailss where id=?");
pst.setString(1,id);
rs=pst.executeQuery();
while(rs.next())
{
	
%>

<div align="right">
<lable class="form-lable"></lable>
<input type="text" style="height:40px;width:390px" class="form-controler" placeholder="Enter the Firstname" value="<%=rs.getString("name") %>" name="name" id="name" required>
</div>
<br><br>

<div align="right">
<lable class="form-lable"></lable>
<input type="text" style="height:40px;width:390px" class="form-controler" placeholder="Enter the Lastname" value="<%=rs.getString("lname") %>" name="lname" id="name" required>
</div>
<br><br>

<div align="right">
<lable class="form-lable"></lable>
<input type="text" style="height:40px;width:390px" class="form-controler" placeholder="Enter the Age" name="age" value="<%=rs.getString("age") %>" id="name" required>
</div>
<br><br>

<div align="right">
<lable class="form-lable"></lable>
 <lable class="form-controler"   for="cars"> </lable>
                            <select style="height:40px;width:390px" name="std" id="std">
                                <option value="stu"><%=rs.getString("std") %></option>
                             <option value="prekg">prekg</option>
                             <option value="lkg">lkg</option>
                             <option value="ukg">Ukg</option>
                             <option value="1st">1st standard</option>
                             <option value="2nd">2nd standard</option>
                             <option value="3rd">3rd standard</option>
                             <option value="4th">4th standard</option>
                             <option value="5th">5th standard</option>
                             <option value="6th">6th standard</option>
                             <option value="7th">7th standard</option>
                             <option value="8th">8th standard</option>
                             <option value="9th">9th standard</option>
                             <option value="10th">10th standard</option>
                             <option value="11thbio">11th Biology</option>
                             <option value="11thcs">11th ComputerScience</option>
                              <option value="11thcom">11th Commerce</option>
							<option value="12thbio">12th Biology</option>
                             <option value="12thcs">12th ComputerScience</option>
                              <option value="12thcom">12th Commerce</option>
                             </select>

<br><br>
<div align="right">
<lable class="form-lable"></lable>
<input type="text" style="height:40px;width:390px" class="form-controler" placeholder="Enter the Email" name="ema" value="<%=rs.getString("ema") %>" id="name" required>
</div>
<br><br>

<div align="right">
<lable class="form-lable"></lable>
<input type="text" style="height:40px;width:390px" class="form-controler" placeholder="Enter the Parents or gaurdian name" value="<%=rs.getString("pname") %>" name="pname" id="name" required>
</div>
<br><br>

<div align="right">
<lable class="form-lable"></lable>
<input type="text" style="height:40px;width:390px"class="form-controler" placeholder="Enter the Mobile Number" name="mob" value="<%=rs.getString("mob") %>" id="name" required>
</div>
<br><br>
<div align="right">
<lable class="form-lable"></lable>
<input type="text" style="height:40px;width:390px" class="form-controler" placeholder="Enter the password" name="pass" value="<%=rs.getString("pass") %>" id="name" required>
</div>

<%
}
%>
<br><br>
<div align="right">
<input type="submit" id="submit" value="submit" name="submit" class="btn-info">
<br><br>
</div>

</form>
</div>

</body>
</html>