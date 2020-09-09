<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page language="java" import="java.lang.*" import="java.sql.*" %>
 <%
 if(request.getParameter("submit")!=null)
 {
	 String name=request.getParameter("name");
	 String lname=request.getParameter("lname");
	 String age=request.getParameter("age");
	 String std=request.getParameter("std");
	 String ema=request.getParameter("ema");
	 String mob=request.getParameter("mob");
	 String pass=request.getParameter("pass");	 
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor","root","8973415069");
	pst=con.prepareStatement("insert into userdetailss(name,lname,age,std,ema,mob,pass)values(?,?,?,?,?,?,?)");
	pst.setString(1,name);
	pst.setString(2,lname);
	pst.setString(3,age);
	pst.setString(4,std);
	pst.setString(5,ema);
	pst.setString(6,mob);
	pst.setString(7,pass);

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
<title>Mentordetails </title>
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
        <li><a href="admin.html">Home</a></li>      
      </ul>
<h1 style="color:white;">Add mentor details</h1>
<div class="row">
<div class="col-sm-4">
<form style="margin-top:10px;" class="card" method="POST" action="#">


<div align="right">
<lable class="form-lable"></lable><br>
<input style="height:40px;width:390px" type="text" class="form-controler" placeholder="Enter the Firstname" name="name" id="name" required>
</div>
<br><br>

<div align="right">
<lable class="form-lable"></lable>
<input style="height:40px;width:390px" type="text" class="form-controler" placeholder="Enter the Lastname" name="lname" id="name" required>
</div>
<br><br>

<div align="right">
<lable class="form-lable"></lable>
<input style="height:40px;width:390px" type="text" class="form-controler" placeholder="Enter the Age" name="age" id="name" required>
</div>
<br><br>

<div align="right">
<lable class="form-lable"></lable>
 <lable class="form-controler"  for="cars"> </lable>
                            <select style="height:40px;width:390px;color:black" name="std" id="std">
                                <option  value="stu">Enter the Standerd</option>
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
                             <option value="11thbio">11th standard-Biology</option>
                             <option value="11thcs">11th standard-ComputerScience</option>
                              <option value="11thcom">11th standard-Commerce</option>
							<option value="12thbio">12th standard-Biology</option>
                             <option value="12thcs">12th standard-ComputerScience</option>
                              <option value="12thcom">12th standard-Commerce</option>
                             </select>
                   <br><br>
</div>
<br><br>

<div align="right">
<lable class="form-lable"></lable>
<input style="height:40px;width:390px" type="text" class="form-controler" placeholder="Enter the Email" name="ema" id="name" required>
</div>
<br><br>

<div align="right">
<lable class="form-lable"></lable>
<input style="height:40px;width:390px" type="text" class="form-controler" placeholder="Enter the Mobile Number" name="mob" id="name" required>
</div>
<br><br>
<div align="right">
<lable class="form-lable"></lable>
<input style="height:40px;width:390px" type="text" class="form-controler" placeholder="Enter the Password" name="pass" id="name" required>
</div>
<br><br>

<div align="right">
<input type="submit" id="submit" value="submit" name="submit" class="btn-info">
<br><br>
</div>


</form>
</div>


<div class="col-sm-8">
<div class="pannel-body">
<table style="color:yellow;margin-top:900px;margin-left:-370px;" id="tbl-student" class="table table-responsive table-bordered" cellpadding="2" width="100%">
<thead>
<tr>
<th>FIRSTNAME</th>
<th>LASTNAME</th>
<th>AGE</th>
<th>STANDARD</th>
<th>EMAIL</th>
<th>MOBILE</th>
<th>PASSWORD</th>
<th>ACTION</th>
<th>ACTION</th>
</tr>
<%
Connection con;
PreparedStatement pst;
ResultSet rs;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor","root","8973415069");

String query="select * from mentordetails";
Statement st=con.createStatement();
rs=st.executeQuery(query);
		while(rs.next())
		{
			String id=rs.getString("id");
			
		

%>

<tr style="color:white;">
<td><%=rs.getString("name")%></td>
<td><%=rs.getString("lname")%></td>
<td><%=rs.getString("age")%></td>
<td><%=rs.getString("std")%></td>
<td><%=rs.getString("ema")%></td>
<td><%=rs.getString("mob")%></td>
<td><%=rs.getString("pass")%></td>
<td><a class="j" href="adminprekgmentorupdate.jsp?id=<%=id%>">Edit</a></td>
<td><a class="j" href="adminprekgmentordelete.jsp?id=<%=id%>">Delete</a></td>

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