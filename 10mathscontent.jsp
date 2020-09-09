<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page language="java" import="java.lang.*" import="java.sql.*" %>
 <%
 if(request.getParameter("submit")!=null)
 {
	 String sub=request.getParameter("sub");
	 session.setAttribute("thesub",sub);
	 String std=(String)session.getAttribute("theeestd");
	 String heading=request.getParameter("heading");
	 String content=request.getParameter("content");
	 String file=request.getParameter("file"); 
	 String video=request.getParameter("video"); 
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor","root","8973415069");
	pst=con.prepareStatement("insert into content(heading,content,file,video,sub,std)values(?,?,?,?,?,?)");
	pst.setString(1,heading);
	pst.setString(2,content);
	pst.setString(3,file);
	pst.setString(4,video);
	pst.setString(5,sub);
	pst.setString(6,std);
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
<title>Syllabus</title>
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
            
<h1 style="color:white;">Add Syllabus </h1>
<div class="row">
<div class="col-sm-4">
<form style="margin-top:10px;" class="card" method="POST" action="10mathscontent.jsp">

<select style="padding-left:10px;padding-right:10px;padding-top:10px;padding-bottom:10px;margin-left:40px;" name="sub" >
<option>Select the subject</option>

							<option value="Maths">Maths</option>
                             <option value="English">English</option>
                             <option value="Science">Science</option>
                             <option value="Social">Social</option>
                             <option value="Physics">Physics</option>
                             <option value="Chemistry">Chemistry</option>
                             <option value="Biology">Biology</option>
                             <option value="Computer">ComputerScience</option>
                             <option value="Commerce">Commerce</option>
                             <option value="Accountancy">Accountancy</option>
                             <option value="Business">BusinessStudies</option>
                             <option value="Economics">Economics</option>
                             <option value="Story">Story</option> 
                             <option value="Rhymes">Rhymes</option>                           
                                                       
                             
</select>


<div align="right">
<lable class="form-lable"></lable><br>
<input style="height:40px;width:390px" type="text" class="form-controler"  placeholder="Enter the heading" name="heading" id="name" >
</div>
<br><br>

<div align="right">
<lable class="form-lable"></lable><br>
<textarea style="height:200px;width:390px" type="text" class="form-controler"placeholder="Enter the content" name="content" id="name" ></textarea>
</div>
  <br><br>
				<tr>
                    <td><input  type="application/pdf" style="height:40px;width:390px;margin-left:40px" placeholder="Enter the pdf URL" name="file" size="50"/></td>
                </tr>
                <br><br>
                
  <div align="right">
<lable class="form-lable"></lable><br>
<input style="height:100px;width:390px;margin-left:40px" type="text" class="form-controler" placeholder="Enter the youtube URL" name="video" id="name">
</div>   
</div>

<br><br>

<div align="left">
<input style="margin-top:700px"type="submit" id="submit" value="submit" name="submit" class="btn-info">
<br><br>
</div>


</form>
</div>



<%
Connection con;
PreparedStatement pst;
ResultSet rs;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor","root","8973415069");
String sub1=(String)session.getAttribute("thesub");
String std1=(String)session.getAttribute("theeestd");
String query="select * from content";
Statement st=con.createStatement();
rs=st.executeQuery(query);
		while(rs.next())
		{
			if(rs.getString("std").equals(std1))
			{
			String id=rs.getString("id");
			
		

%>
<tr>
<h1 style="color: white;"><%=rs.getString("sub")%></h1>

<h1 style="color: yellow;"><%=rs.getString("heading")%></h1>
<h2  name="content"><pre style="font-size:20px"><%= rs.getString("content")%></pre></h2>
<td><iframe style="margin-left:450px;"src="<%=rs.getString("file")%>" width="500" height="500px"> </iframe></td>
<br><br>
<td><iframe style="margin-left:200px;" src="<%=rs.getString("video")%>" width="1000" height="500px"> </iframe></td>
</tr>
<td><a class="j" href="10mathsupdate.jsp?id=<%=id%>">Edit</a></td>
<td><a class="j" href="10mathsdelete.jsp?id=<%=id%>">Delete</a></td>
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