<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page language="java" import="java.lang.*" import="java.sql.*" %>
  <%
 if(request.getParameter("submit")!=null)
 {
	 String idd=(String)session.getAttribute("thea");

	 String question=request.getParameter("question");
	 String option1=request.getParameter("option1");
	 String option2=request.getParameter("option2");
	 String option3=request.getParameter("option3");
	 String option4=request.getParameter("option4"); 
	 String correctans=request.getParameter("correctans"); 

	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor","root","8973415069");
	pst=con.prepareStatement("update quiz set question=?,option1=?,option2=?,option3=?,option4=?,correctans=? where idd="+idd);
	pst.setString(1,question);
	pst.setString(2,option1);
	pst.setString(3,option2);
	pst.setString(4,option3);
	pst.setString(5,option4);
	pst.setString(6,correctans);
	

	pst.executeUpdate();

	%>
	<script>
	alert("contents updated");
	</script>
	<% 
 }	 	 
 %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EditQuiz</title>
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
 font-family: 38px;
 
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
        <li><a href="mentoraddquiz.jsp">Home</a></li>      
      </ul>
<h1 style="color:white;">Update</h1>
<div class="row">
<div class="col-sm-4">
<form style="margin-top:10px;" class="card" method="POST" action="quizupdate.jsp">
<%
Connection con;
PreparedStatement pst;
ResultSet rs;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor","root","8973415069");
String id=request.getParameter("id");
pst=con.prepareStatement("select * from quiz where idd="+id);
rs=pst.executeQuery();
if(rs.next()){	
	String a=rs.getString("idd");
	session.setAttribute("thea", a);
%>

<div align="right">
<lable class="form-lable"></lable><br>
<textarea style="height:200px;width:390px" name="question"><%= rs.getString("question")%></textarea>
</div>
  <br><br>
				
                
  <div align="right">
<lable class="form-lable"></lable><br>
<input  type="text"style="width:390px ;"class="form-controler" value="<%=rs.getString("option1") %>" name="option1" id="name">
</div>   
 
<div align="right">
<lable class="form-lable"></lable><br>
<input  type="text"style="width:390px ;"class="form-controler" value="<%=rs.getString("option2") %>" name="option2" id="name">
</div> 
<div align="right">
<lable class="form-lable"></lable><br>
<input  type="text"style="width:390px ;"class="form-controler" value="<%=rs.getString("option3") %>" name="option3" id="name">
</div> 
<div align="right">
<lable class="form-lable"></lable><br>
<input type="text" style="width:390px ;class="form-controler" value="<%=rs.getString("option4") %>" name="option4" id="name">
</div> 
<div align="right">
<lable class="form-lable"></lable><br>
<input  type="text"style="width:390px ;"class="form-controler" value="<%=rs.getString("correctans") %>" name="correctans" id="name">
</div>       
</div>

<%
}
%>

<br><br>
<div align="left">
<input type="submit" style="margin-top:600px" id="submit" value="submit" name="submit" class="btn-info">
</form>
</div>

</body>
</html>
