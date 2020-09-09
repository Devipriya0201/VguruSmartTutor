<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page language="java" import="java.lang.*" import="java.sql.*" %>
   <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Myprofile </title>
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
        <li><a href="men13.html">Home</a></li>      
      </ul>
      <style>
img {
  border-radius: 50%;
  }
</style>
</head>
<body>

<h2 style="color:yellow;margin-left:580px;font-family: sans-serif ;">MY PROFILE</h2>

<img  src="kif.gif" alt="Avatar" style="width:200px;margin-left:570px;">
   <br><br>   
      <%
   
try{
	String url = "jdbc:mysql://localhost:3306/smarttutor?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	String driver = "com.mysql.jdbc.Driver";
	String userName ="root";
	String pass="8973415069";
	Connection con = null;
	Class.forName(driver);
	con = DriverManager.getConnection(url,userName,pass);
	Statement st=con.createStatement();
	String u1=(String) session.getAttribute("themname");
	ResultSet rs=st.executeQuery("select * from mentordetails where name='"+u1+"'");
	if(rs.next()){
%>
<form name="form" action="mentormyprofile.jsp" method="post">
<div align="center">
<lable style="color:white" class="form-lable">FIRSTNAME</lable>
<br>
<input type="text" style="height:40px;width:390px" class="form-controler" value="<%= rs.getString(2) %>" name="na" id="name" required>
</div>

<div align="center">
<lable style="color:white" class="form-lable">LASTNAME</lable>
<br>
<input type="text" style="height:40px;width:390px" class="form-controler" value="<%= rs.getString(3) %>"  name="lna" id="name" required>
</div>

<div align="center">
<lable style="color:white"class="form-lable">AGE</lable>
<br>
<input type="text" style="height:40px;width:390px" class="form-controler" value="<%= rs.getString(4) %>" name="ag"  id="name" required>
</div>

<div align="center">
<lable style="color:white" class="form-lable">STANDARD</lable>
<br>
 <lable class="form-controler"  for="cars"> </lable>
                            <select style="height:40px;width:390px"  name="std" id="std">
                                <option value="stu"><%= rs.getString(5) %></option>
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
<br>
<div align="center">
<lable style="color:white" class="form-lable">EMAIL</lable>
<br>
<input type="text" style="height:40px;width:390px" class="form-controler" value="<%= rs.getString(6) %>" name="ema" id="name" required>
</div>

<div align="center">
<lable style="color:white" class="form-lable">MOBILE</lable>
<br>
<input type="text" style="height:40px;width:390px"class="form-controler" value="<%= rs.getString(7) %>" name="mb"  id="name" required>
</div>
<div align="center">
<lable style="color:white" class="form-lable">PASSWORD</lable>
<br>
<input type="text" style="height:40px;width:390px" class="form-controler" value="<%= rs.getString(8) %>" name="pas"  id="name" required>
</div>
<br><br>
 <div class="j" style="width:130px;margin-left:-20%;margin-top:10px;">
		<button type="submit" >update</button>
        </div>

</form>
<br>
<%
							}
							}
							catch(Exception e){

							}
						%>
</div>

</body>
</html>		

   <%
  Connection con=null;
   PreparedStatement stmt=null;
   String url = "jdbc:mysql://localhost:3306/smarttutor?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	String driver = "com.mysql.jdbc.Driver";
	String userName ="root";
	String pass="8973415069";
	Class.forName(driver);
	con = DriverManager.getConnection(url,userName,pass);
	Statement st=con.createStatement();
    String a=request.getParameter("na");
    String b=request.getParameter("lna");
    String c=request.getParameter("ag");
    String d=request.getParameter("std");
    String e=request.getParameter("ema");
    String g=request.getParameter("mb");
    String h=request.getParameter("pas");
    if(a!=null && b!=null && c!=null && d!=null && e!=null && g!=null){
        String q="update mentordetails set name=?, lname=?, age=?, std=?,ema=?, mob=?, pass=? where name='"+a+"'";
        stmt = con.prepareStatement(q);
        stmt.setString(1,a);
        stmt.setString(2,b);
        stmt.setString(3,c);
        stmt.setString(4,d);
        stmt.setString(5,e);
        stmt.setString(6,g);
        stmt.setString(7,h);
        int x=stmt.executeUpdate();
        stmt.close();
        con.close();
        response.sendRedirect("mentormyprofile.jsp");
    }
    %>


		