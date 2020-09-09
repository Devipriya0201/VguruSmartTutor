 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page language="java" import="java.lang.*" import="java.sql.*" %>

 <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Syllabus </title>
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
        <li><a href="admin.html">Home</a></li>      
      </ul>
      
      <h2 style="color:white">Contents from prekg to +2</h2><br>
      <form action="adminmaths10.jsp">
<select style="padding-left:10px;padding-right:10px;padding-top:10px;padding-bottom:10px;margin-left:40px;" name="std" >
<option>Select the standard</option>
							
							<option value="prekg">PREKG</option>
							<option value="lkg">LKG</option>
                             <option value="ukg">UKG</option>
                             <option value="1st">1st Standard</option>
                             <option value="2nd">2nd Standard</option>
                             <option value="3rd">3rd Standard</option>
                             <option value="4th">4th Standard</option>
                             <option value="5th">5th Standard</option>
                             <option value="6th">6th Standard</option>
                             <option value="7th">7th Standard</option>
                             <option value="8th">8th Standard</option>
                             <option value="9th">9th Standard</option>
                             <option value="10th">10th Standard</option>
                             <option value="11th">11th Biology</option> 
                             <option value="1thCS">11th ComputerScience</option>  
                             <option value="11thC">11th Commerce</option>                           
                             <option value="12th">12th Biology</option>                           
                             <option value="12thCS">12th ComputerScience</option>                           
                             <option value="12thC">12th Commerce</option>                           
                                                      
                                                       
                             
</select>
<div align="left">
<input style="margin-top:20px;margin-left:200px;"type="submit" id="submit" value="submit" name="submit" class="btn-info">
</div>
</form>
<%
Connection con;
PreparedStatement pst;
ResultSet rs;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor","root","8973415069");
String sub=request.getParameter("std");
String query="select * from content";
Statement st=con.createStatement();
rs=st.executeQuery(query);
		while(rs.next())
		{
			if(rs.getString("std").equals(sub)){
%>
<tr>
<h1 style="color: white;"><%=rs.getString("sub")%></h1>

<h1 style="color: yellow;"><%=rs.getString("heading")%></h1>
<h2  name="content"><pre style="font-size:20px"><%= rs.getString("content")%></pre></h2>
<td><iframe style="margin-left:450px;"src="<%=rs.getString("file")%>" width="500" height="500px"> </iframe></td>
<br><br>
<td><iframe style="margin-left:200px;" src="<%=rs.getString("video")%>" width="1000" height="500px"> </iframe></td>
</tr>
<%
}
		}
con.close();
%>
</table>
</div>
</div>
</div>

</body>
</html>