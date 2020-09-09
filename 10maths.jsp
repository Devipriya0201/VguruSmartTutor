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
<%
Connection con;
PreparedStatement pst;
ResultSet rs;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor","root","8973415069");
String std=(String)session.getAttribute("thestd");
String query="select * from content";
Statement st=con.createStatement();
rs=st.executeQuery(query);
		if(rs.next())
		{
			if((std.equals("11th")||std.equals("12th"))){
				%>
			
<ul>
				        <li><a href="stu13.html">Home</a></li>
				        <li><a  class="" href="10english.jsp?sub=<%="Maths" %>">Maths</a></li>
				        <li><a  class="" href="10english.jsp?sub=<%="English" %>">English</a></li>
				        <li><a  class="" href="10english.jsp?sub=<%="Physics" %>">Physics</a></li>
				        <li><a  class="" href="10english.jsp?sub=<%="Chemistry" %>">Chemistry</a></li>       
				        <li><a  class="" href="10english.jsp?sub=<%="Biology" %>">Biology</a></li>
				               
				      </ul>
				        <img  alt="prekg" src="nav.gif" style="width: 900px;margin-left: 200px;height: 500px;">
          <div style="color: white;margin-top:-100px;" class="centered">Select The Subject </div>
				        
				      

<%
}
			
			else if((std.equals("11thCS")||std.equals("12thCS"))){
					%>
				
	<ul>
					        <li><a href="stu13.html">Home</a></li>
					        <li><a  class="" href="10english.jsp?sub=<%="Maths" %>">Maths</a></li>
					        <li><a  class="" href="10english.jsp?sub=<%="English" %>">English</a></li>
					        <li><a  class="" href="10english.jsp?sub=<%="Physics" %>">Physics</a></li>
					        <li><a  class="" href="10english.jsp?sub=<%="Chemistry" %>">Chemistry</a></li>       
					        <li><a  class="" href="10english.jsp?sub=<%="Computer" %>">ComputerScience</a></li>
					               
					      </ul>
  <img  alt="prekg" src="nav.gif" style="width: 900px;margin-left: 200px;height: 500px;">
          <div style="color: white;margin-top:-100px;" class="centered">Select The Subject </div>
  

	<%
	}
				
				else	if((std.equals("11thC")||std.equals("12thC"))){
						%>
					
		<ul>
						        <li><a href="stu13.html">Home</a></li>
						        <li><a  class="" href="10english.jsp?sub=<%="Commerce" %>">Commerce</a></li>
						        <li><a  class="" href="10english.jsp?sub=<%="Accountancy" %>">Accountancy</a></li>
						        <li><a  class="" href="10english.jsp?sub=<%="Economics" %>">Economics</a></li>
						        <li><a  class="" href="10english.jsp?sub=<%="Business" %>">BusinessStudies</a></li>       						               
						      </ul>
  <img  alt="prekg" src="nav.gif" style="width: 900px;margin-left: 200px;height: 500px;">
            <div style="color: white;margin-top:-100px;" class="centered">Select The Subject </div>
  

		<%
		}
				else if((std.equals("lkg")||std.equals("ukg")||std.equals("prekg"))){
							%>
						
			<ul>
							        <li><a href="stu13.html">Home</a></li>
							        <li><a  class="" href="10english.jsp?sub=<%="Maths" %>">Maths</a></li>
							        <li><a  class="" href="10english.jsp?sub=<%="English" %>">English</a></li>
							        <li><a  class="" href="10english.jsp?sub=<%="Story" %>">Story</a></li>
							        <li><a  class="" href="10english.jsp?sub=<%="Rhymes" %>">Rhymes</a></li>       
							               
							      </ul>
  <img  alt="prekg" src="nav.gif" style="width: 900px;margin-left: 200px;height: 500px;">
          <div style="color: white;margin-top:-100px;" class="centered">Select The Subject </div>
  

			<%
			}			
			else {
				%>
				<ul>
        <li><a href="stu13.html">Home</a></li>
       <li><a  class="" href="10english.jsp?sub=<%="Maths" %>">Maths</a></li>
        <li><a  class="" href="10english.jsp?sub=<%="English" %>">English</a></li>
        <li><a  class="" href="10english.jsp?sub=<%="Science" %>">Science</a></li>
        <li><a  class="" href="10english.jsp?sub=<%="Social" %>">Social</a></li>            
               
      </ul>
        <img  alt="prekg" src="nav.gif" style="width: 900px;margin-left: 200px;height: 500px;">
          <div style="color: white;margin-top:-100px;" class="centered">Select The Subject </div>
        
      
				<%
			}
}
%>

</div>
</div>

</body>
</html>