<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page language="java" import="java.lang.*" import="java.sql.*" %>
 <%
 if(request.getParameter("submit")!=null)
 {
	 String sub=request.getParameter("sub");
	// session.setAttribute("thesub",sub);
	String std=(String)session.getAttribute("theeestd");
	 String heading=request.getParameter("heading");
	 String question=request.getParameter("question");
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor","root","8973415069");
	pst=con.prepareStatement("insert into faq(heading,question,std)values(?,?,?)");
	pst.setString(1,heading);
	pst.setString(2,question);
	pst.setString(3,std);
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
<title>AddFAQ</title>
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
        <li><a href="men13.html">Home</a></li>   
              
      </ul>
            
<h1 style="color:white;">Add FAQ's </h1>
<div class="row">
<div class="col-sm-4">
<form style="margin-top:10px;" class="card" method="POST" action="#">
<div align="right">
<lable class="form-lable"></lable><br>
<input style="height:40px;width:390px" type="text" class="form-controler"  placeholder="Enter the subject" name="heading" id="name" >
</div>
<br><br>

<div align="right">
<lable class="form-lable"></lable><br>
<textarea style="height:200px;width:390px" type="text" class="form-controler"placeholder="Enter the question" name="question" id="name" ></textarea>
</div>
<div align="right">
<input style="margin-top:100px"type="submit" id="submit" value="submit" name="submit" class="btn-info">
<br><br>
</div>


</form>
<br>
</div>



<%
Connection con;
PreparedStatement pst;
ResultSet rs;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor","root","8973415069");

String std1=(String)session.getAttribute("theeestd");
String query="select * from faq";
Statement st=con.createStatement();
rs=st.executeQuery(query);
		while(rs.next())
		{
			if(rs.getString("std").equals(std1))
			{
	        String id=rs.getString("id");
			
		

%>
<tr>
<h1 style="color: yellow;margin-top:40%;margin-left:50px;"><%=rs.getString("heading")%></h1>
<h2  name="question"><pre style="font-size:20px"><%= rs.getString("question")%></pre></h2>
<td><a class="j"href="10faqupdate.jsp?id=<%=id%>">Edit</a></td>
<td><a class="j" href="10faqdelete.jsp?id=<%=id%>">Delete</a></td>
</tr>
<%
		}
		}
%>

</table>
</div>


</div>
</div>

</body>
</html>