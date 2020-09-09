<!DOCTYPE html>
<html>
<head>
<title>VGURU</title>
</head>
<style>
.dropbtn {
  background-color: #078080;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  border-radius:20px;
  margin-left:100px;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 0;
    margin-left:100px;
  
}

.dropdown-content a {
  color: black;
  padding: 10px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
</style>
<link rel="stylesheet" href="mentor.css">
<body>
<%
String std="10th";
session.setAttribute("thestdd",std);
%>
<div style="background: linear-gradient(to left, rgb(103, 114, 2) ,#078080); padding-top:  10px;
padding-bottom: 0px;  " class="header">
  <h1 style="color: antiquewhite; margin-left: 600px;">VGURU</h1>
  
<h1 style="color:  rgb(70, 13, 70); margin-left: 450px;">T h e S m a r t T u t o r</h1> 
<h2 style="color: antiquewhite; font-family:'Courier New', Courier, monospace ; margin-left: 520px;">10th Admin Pannel </h2>
  
  
 

<ul>
  <li><a class="active" href="admin10.html">Home</a></li>
  <li><a href="adminmaths10.jsp">Classes</a></li>
  <li><a href="adminquiz.jsp">Quiz</a></li>
  <li><a href="adminfaq10.jsp">FAQ's</a></li>
   <li><a href="admindoubts10.jsp">Doubts</a></li>
  <li><a href="#contact">ProgressTracker</a></li>
  <li><a href="adminstudent10.jsp">Students Profile</a></li>
  <li><a href="adminmentor10.jsp">Mentors Profile</a></li>
  <li><a href="#contact">Myprofile</a></li>
    <li><a href="index.html">Signout</a></li>
  </li>
</ul>
</div>

<div style=" color: white;margin-left: 120px;" class="centered">Hi! Welcome ADMIN</div>
<img  alt="prekg" src="admin.jpg" style="width: 800px;margin-left: 500px;height: 600px;">
</a>
  </body>
</html>