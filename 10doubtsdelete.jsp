<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page language="java" import="java.lang.*" import="java.sql.*" %>
    
    <%
	 String id=request.getParameter("id");
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor","root","8973415069");
	pst=con.prepareStatement("delete from doubts where id=?");
	pst.setString(1,id);
	pst.executeUpdate();

	%>
	<script>
	alert("details deleted");
	</script>
	
