<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page language="java" import="java.lang.*" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OTP</title>
    <link rel = "icon" type = "image/png" href = "vgur.jpg"></head>

</head>
<body>
<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/smarttutor?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";	
String driver = "com.mysql.jdbc.Driver"; //this is the driver name
String userName ="root"; //this is mysql user name
String password="8973415069"; // this is mysql password
String o=request.getParameter("otp");
String to=(String)session.getAttribute("theema");
String name="";
String std="";
Class.forName(driver);
con = DriverManager.getConnection(url,userName,password);
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from mentordetails where ema='"+to+"'");
if(rs.next()){
    if(rs.getString(9).equals(o)){
        name+=rs.getString(3);
        std+=rs.getString(5);
        session.setAttribute("theeeestd", std);
        response.sendRedirect("men13.html");
    }
           
    else{
        %>
    <script>
       alert("Invalid OTP..Please try again.");
    </script>
<%
    }
    session.setAttribute("theName",name);
}
%>
</body>
</html>