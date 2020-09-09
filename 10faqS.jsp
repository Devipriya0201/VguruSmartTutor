 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page language="java" import="java.lang.*" import="java.sql.*" %>
 <%
 if(request.getParameter("submit")!=null)
 {
	 String heading=request.getParameter("heading");
	 String question=request.getParameter("question");
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	Class.forName("com.mysql.jdbc.Driver");
	String std=(String)session.getAttribute("thestd");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor","root","8973415069");
	pst=con.prepareStatement("insert into faq(heading,question)values(?,?)");
	pst.setString(1,heading);
	pst.setString(2,question);
	pst.executeUpdate();

	%>
	<script>
	alert("Contents added");
	</script>
	<% 
 }	 	 
 %>
 
 <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FAQ</title>
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

<%
Connection con;
PreparedStatement pst;
ResultSet rs;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor","root","8973415069");
String std=(String)session.getAttribute("thestd");
String query="select * from faq";
Statement st=con.createStatement();
rs=st.executeQuery(query);
		while(rs.next())
		{
			if(rs.getString("std").equals(std)){
				String id=rs.getString("id");
			
		

%>

<tr>
<h1 style="color: yellow;"><%=rs.getString("heading")%></h1>
<h2  name="content"><pre style="font-size:20px"><%= rs.getString("question")%></pre></h2>
</tr>
<%
		}
		}
%>

</div>


</div>
</div>

</body>
</html>