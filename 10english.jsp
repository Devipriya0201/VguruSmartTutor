 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page language="java" import="java.lang.*" import="java.sql.*" %>
  <html>
  <body>
 <%
Connection con;
PreparedStatement pst;
ResultSet rs;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor","root","8973415069");
String sub2=request.getParameter("sub");
String std2=(String)session.getAttribute("thestd");

String query="select * from content";
Statement st=con.createStatement();
rs=st.executeQuery(query);
		while(rs.next())
		{
			if(rs.getString("std").equals(std2)&&rs.getString("sub").equals(sub2)&&(rs.getString("std").equals("11th")||rs.getString("std").equals("12th"))){
				%>
				<head>
				<meta charset="ISO-8859-1">
				<title>Syllabus</title>
				
  <link rel = "icon" type = "image/png" href = "vgur.jpg">
  </head>
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
				        <li><a  class="" href="10english.jsp?sub=<%="Maths" %>">Maths</a></li>
				        <li><a  class="" href="10english.jsp?sub=<%="English" %>">English</a></li>
				        <li><a  class="" href="10english.jsp?sub=<%="Physics" %>">Physics</a></li>
				        <li><a  class="" href="10english.jsp?sub=<%="Chemistry" %>">Chemistry</a></li>       
				        <li><a  class="" href="10english.jsp?sub=<%="Biology" %>">Biology</a></li>
				               
				      </ul>


				<tr>
				<h1 style="color: yellow;"><%=rs.getString("heading")%></h1>
				<h2  name="content"><pre style="font-size:20px"><%= rs.getString("content")%></pre></h2>
				<td><iframe style="margin-left:450px;"src="<%=rs.getString("file")%>" width="500" height="500px"> </iframe></td>
				<br><br>
				<td><iframe style="margin-left:200px;" src="<%=rs.getString("video")%>" width="1000" height="500px"> </iframe></td>

				</tr>
				</div>
				</div>
				</div>
				<%
					}
			
				else if(rs.getString("std").equals(std2)&&rs.getString("sub").equals(sub2)&&(rs.getString("std").equals("11thCS")||rs.getString("std").equals("12thCS"))){
				%>
				<head>
				<meta charset="ISO-8859-1">
				<title>VGURU StudentsPannel </title>
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
				        <li><a  class="" href="10english.jsp?sub=<%="Maths" %>">Maths</a></li>
				        <li><a  class="" href="10english.jsp?sub=<%="English" %>">English</a></li>
				        <li><a  class="" href="10english.jsp?sub=<%="Physics" %>">Physics</a></li>
				        <li><a  class="" href="10english.jsp?sub=<%="Chemistry" %>">Chemistry</a></li>       
				        <li><a  class="" href="10english.jsp?sub=<%="Computer" %>">ComputerScience</a></li>
				               
				      </ul>


				<tr>
				<h1 style="color: yellow;"><%=rs.getString("heading")%></h1>
				<h2  name="content"><pre style="font-size:20px"><%= rs.getString("content")%></pre></h2>
				<td><iframe style="margin-left:450px;"src="<%=rs.getString("file")%>" width="500" height="500px"> </iframe></td>
				<br><br>
				<td><iframe style="margin-left:200px;" src="<%=rs.getString("video")%>" width="1000" height="500px"> </iframe></td>

				</tr>
				
				</div>
				</div>
				</div>
				<%
				}
				else if(rs.getString("std").equals(std2)&&rs.getString("sub").equals(sub2)&&(rs.getString("std").equals("11thC")||rs.getString("std").equals("12thC"))){
				%>
				<head>
				<meta charset="ISO-8859-1">
<title>VGURU StudentsPannel </title>
				  <link rel = "icon" type = "image/png" href = "vgur.jpg"></head>				<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css/">
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
				        <li><a  class="" href="10english.jsp?sub=<%="Commerce" %>">Commerce</a></li>
						        <li><a  class="" href="10english.jsp?sub=<%="Accountancy" %>">Accountancy</a></li>
						        <li><a  class="" href="10english.jsp?sub=<%="Economics" %>">Economics</a></li>
						        <li><a  class="" href="10english.jsp?sub=<%="Business" %>">BusinessStudies</a></li>
				        
				               
				      </ul>


				<tr>
				<h1 style="color: yellow;"><%=rs.getString("heading")%></h1>
				<h2  name="content"><pre style="font-size:20px"><%= rs.getString("content")%></pre></h2>
				<td><iframe style="margin-left:450px;"src="<%=rs.getString("file")%>" width="500" height="500px"> </iframe></td>
				<br><br>
				<td><iframe style="margin-left:200px;" src="<%=rs.getString("video")%>" width="1000" height="500px"> </iframe></td>

				</tr>
					</div>
				</div>
				</div>
				<%
			}
	
				else if(rs.getString("std").equals(std2)&&rs.getString("sub").equals(sub2)&&(rs.getString("std").equals("prekg")||rs.getString("std").equals("lkg")||rs.getString("std").equals("ukg"))){
				%>
				<head>
				<meta charset="ISO-8859-1">
<title>VGURU StudentsPannel </title>
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
				        <li><a  class="" href="10english.jsp?sub=<%="Maths" %>">Maths</a></li>
							        <li><a  class="" href="10english.jsp?sub=<%="English" %>">English</a></li>
							        <li><a  class="" href="10english.jsp?sub=<%="Story" %>">Story</a></li>
							        <li><a  class="" href="10english.jsp?sub=<%="Rhymes" %>">Rhymes</a></li> 
				               
				      </ul>


				<tr>
				<h1 style="color: yellow;"><%=rs.getString("heading")%></h1>
				<h2  name="content"><pre style="font-size:20px"><%= rs.getString("content")%></pre></h2>
				<td><iframe style="margin-left:450px;"src="<%=rs.getString("file")%>" width="500" height="500px"> </iframe></td>
				<br><br>
				<td><iframe style="margin-left:200px;" src="<%=rs.getString("video")%>" width="1000" height="500px"> </iframe></td>

				</tr>
					</div>
				</div>
				</div>
				<%
			}

			else if(rs.getString("std").equals(std2)&&rs.getString("sub").equals(sub2)){
			String id=rs.getString("id");
			
		

%>
<head>
<meta charset="ISO-8859-1">
<title>VGURU StudentsPannel </title>
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
        <li><a  class="" href="10english.jsp?sub=<%="Maths" %>">Maths</a></li>
        <li><a  class="" href="10english.jsp?sub=<%="English" %>">English</a></li>
        <li><a  class="" href="10english.jsp?sub=<%="Science" %>">Science</a></li>
        <li><a  class="" href="10english.jsp?sub=<%="Social" %>">Social</a></li>       
               
      </ul>


<tr>
<h1 style="color: yellow;"><%=rs.getString("heading")%></h1>
<h2  name="content"><pre style="font-size:20px"><%= rs.getString("content")%></pre></h2>
<td><iframe style="margin-left:450px;"src="<%=rs.getString("file")%>" width="500" height="500px"> </iframe></td>
<br><br>
<td><iframe style="margin-left:200px;" src="<%=rs.getString("video")%>" width="1000" height="500px"> </iframe></td>

</tr>
</div>
</div>
</div>

<%
}
		}
%>



</body>
</html>
  