  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page language="java" import="java.lang.*" import="java.text.SimpleDateFormat" import="java.util.Date" import="java.text.DecimalFormat" import="java.sql.*" %>
    <%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.servlet.http.*" %>
    <% 
    String a="";
            String z="";
            String x="";
            String y="";
            String s="";
            String s1="";
            String s2="";
            String s3="";
            String s4="";
            String s5="";
           int current = 1;
            int count=0;%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>QUIZ</title>
  <link rel = "icon" type = "image/png" href = "vgur.jpg"></head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doubts </title>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css/">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css/">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="nav.css">
  <script>
  var counter=1;
        var total_seconds=20;
    var c_minutes = parseInt(total_seconds/60);
    var c_seconds = parseInt(total_seconds%60);
    function checktime(){
        document.getElementById("quiz-time-left").innerHTML
        ='Time Left: '+ c_minutes + 'minutes' + c_seconds+'seconds';
        if(total_seconds<=0){
        	 var counter = 0
             counter = parseInt(document.form1.hidden.value) + 1
			 document.form1.hidden.value = counter 
            setTimeout('document.form1.submit()');
        }
        else{
            total_seconds=total_seconds-1;
            c_minutes=parseInt(total_seconds/60);
            c_seconds=parseInt(total_seconds%60);
            setTimeout("checktime()",1000);
        }
    }
    setTimeout("checktime()",1000);
        </script>
</head>
<style>
body{

background-image:url(blend.gif); 
background-size: cover;
        background-attachment: fixed;
        height: 300%;
        width: 100%;
 color:white;
 font-family: sans-serif;
 font-family: 30px;
 
}
.c{
color:yellow;
	margin-top:-10px;
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
      
  

<div class="content">
<form align="left" name="form1" action="q.jsp" method="post">

  
    
    <%
            String username=(String)session.getAttribute("thename");
            String stdd=(String)session.getAttribute("thestd");
            
            if(request.getParameter("hiddenone") != null) 
            {
                count = Integer.parseInt(request.getParameter("hiddenone"));
            }
            
            
            if(request.getParameter("hidden") != null) 
            {
                current = Integer.parseInt(request.getParameter("hidden"));
            }
			

        Class.forName("com.mysql.jdbc.Driver");

        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor", "root", "8973415069");

        Statement tos= conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
                ResultSet.CONCUR_READ_ONLY);
        ResultSet srr=tos.executeQuery("select * from quiz where std='"+stdd+"'");
		
		if(current<1)
		{
			current=1;
		}
                srr.last();
		int rows=srr.getRow();
                out.println("Total Questions :"+rows+"\n"); 
                %><br> <%
                out.println("Question no:"+current);
                %><br> <%
                out.println("Your score:"+count);
                %><br> <%
		if(current<=rows)
		{
			srr.absolute(current);
    %>
    <br/>
    <br/>
    <% if(current<=11){%>
     <div class="c"  id="quiz-time-left" ></div>
     <%}
    %>
    <table style="margin-left:300px;">
        <tr><td><%= srr.getString(2)%></td></tr>
         <% String x1=srr.getString(7);
         String aa=srr.getString(1).toString();
         int nu=Integer.parseInt(aa);
                    int num=Integer.parseInt(x1);
                    int i=0;
                    for( i=3;i<=num;i++)
                    {
                    %>
        <tr  style="color:yellow">
        	<td align="left" style="margin-left:20px;">
                    
          		<label ><input type="radio" name="r1" id="r1" value="<%=srr.getString(i) %>" onclick="correctans()"><%=srr.getString(i) %>
          </label></td></tr>
        <%} %>
            
    </table>
    <br/>
    <input type="hidden" name="date" id="outDate" />
	<input type="hidden" name="time" id="outtime" />
	<script type="text/javascript">
function getDate()
{
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth()+1;
    var yyyy = today.getFullYear();
    var hours = today.getHours();
    var mins = today.getMinutes();
    if(dd<10){dd='0'+dd} if(mm<10){mm='0'+mm}
    today = yyyy+"/"+mm+"/"+dd;
    document.getElementById("outDate").value = today;
    document.getElementById("outtime").value = hours + ":" + mins;
}
getDate();
</script>
    <input type="hidden" name="hiddenone" value="<%=count %>">
      <INPUT TYPE="HIDDEN" NAME="hidden" VALUE="<%= current %>">
          <INPUT style="color:black;margin-left:300px;" type="BUTTON" Value="Submit" onclick="finalans()">
        <%
        
        
                }
                else
                {
                	Class.forName("com.mysql.jdbc.Driver");
                    Connection conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor", "root", "8973415069");
                    Statement st2= conn2.createStatement();
                    ResultSet rs1=st2.executeQuery("select * from score");
                    boolean flag=true;
                    while(rs1.next())
                    		{
                    	if(rs1.getString(2).equals(username)){
                    		flag=false;
                    		break;
                    	}
                    }
                	if(flag==true){
                	try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/smarttutor", "root", "8973415069");
                    Statement st1= conn1.createStatement();
                    String finalscore=String.valueOf(count);
                    session.setAttribute("thescore", finalscore);
                    
                    int i=st1.executeUpdate("insert into score(username,finalscore) values('"+username+"','"+finalscore+"')");
                    if(i!=0)
                    {
                        out.println("Thank you for quiz");
                        		%>
                        		<h1 style="text-align:center;">Your Score is : <%=session.getAttribute("thescore") %></h1>
                        		<%
                        		String p="";
                        		
                            	    String url = "jdbc:mysql://localhost:3306/smarttutor?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
                            		String driver = "com.mysql.jdbc.Driver";
                            		String userName ="root";
                            		String password="8973415069";
                            	    Connection con = null;
                            		Class.forName(driver);
                            		con = DriverManager.getConnection(url,userName,password);
                            	    Statement sot=con.createStatement();
                            	    ResultSet ros=sot.executeQuery("select * from userdetailss where name='"+username+"'");
                            	    if(ros.next()){
                            	            p=ros.getString(6);
                            	    }
                        		String result;
                        	    final String to = p;
                        	 
                        	    final String subject = "Forget Password";
                        	     String messg="Hi! Your Score is :";
                        	    final String from = "vgurututor@gmail.com";
                        	    final String pass = "8973415069";
                        	    String host = "smtp.gmail.com";
                        	    Properties props = new Properties();
                        	    props.put("mail.smtp.host", host);
                        	    props.put("mail.transport.protocol", "smtps");
                        	    props.put("mail.smtp.auth", "true");
                        	    props.put("mail.smtp.starttls.enable", "true");
                        	    props.put("mail.smtp.user", from);
                        	    props.put("mail.smtp.password", pass);
                        	    props.put("mail.smtp.port", "587");

                        	    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
                        	        @Override
                        	        protected PasswordAuthentication getPasswordAuthentication() {
                        	            return new PasswordAuthentication(from, pass);
                        	        }
                        	    });
                        	    messg+=finalscore;
                        	    try {
                        	        MimeMessage message = new MimeMessage(mailSession);

                        	        message.setFrom(new InternetAddress(from));

                        	        message.addRecipient(Message.RecipientType.TO , new InternetAddress(to));

                        	        message.setSubject(subject);

                        	        message.setText(messg);

                        	        Transport.send(message);

                        	        result = "Your mail sent successfully....";

                        	    } catch (MessagingException mex) {

                        	        mex.printStackTrace();

                        	        out.println(mex);

                        	        result = "Error: unable to send mail....";

                        	    }

                    }
                    else
                    {
                        out.print("Sorry some issue ");
                    }
                	}
                	catch(Exception e){
                	}
                	}
                	else{
                		Connection cox=null;
                		PreparedStatement mt=null;
                		String url = "jdbc:mysql://localhost:3306/smarttutor?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
                		String driver = "com.mysql.jdbc.Driver";
                		String userName ="root";
                		String pass="8973415069";
                		Class.forName(driver);
                		String finalscore=String.valueOf(count);
                		session.setAttribute("thescore", finalscore);
                		cox = DriverManager.getConnection(url,userName,pass);
                		Statement stt=cox.createStatement();
                		String q="update score set finalscore=? where username='"+username+"'";
                		mt = cox.prepareStatement(q);
                		mt.setString(1,finalscore);
                		int i=mt.executeUpdate();
                		if(i!=0)
                        {
                            out.println("Thank you for quiz");
                            		%>
                            		<h1 style="text-align:center;">Your Score is : <%=session.getAttribute("thescore") %></h1>
                            		<%
                            		String p="";
                            		try{
                                	    String u2rl = "jdbc:mysql://localhost:3306/smarttutor?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
                                		String d2river = "com.mysql.jdbc.Driver";
                                		String u2serName ="root";
                                		String p2assword="8973415069";
                                	    Connection con = null;
                                		Class.forName(driver);
                                		con = DriverManager.getConnection(u2rl,u2serName,p2assword);
                                	    Statement sot=con.createStatement();
                                	    ResultSet ros=sot.executeQuery("select * from userdetailss where name='"+username+"'");
                                	    if(ros.next()){
                                	            p=ros.getString(6);
                                	    }
                                	    }
                                	    catch(Exception e){}
                            		String result;
                            
                            	    final String to = p;
                            	    
                            	    final String subject = "Forget Password";
                            	     String messg="Hi! Your Score is :";
                            	    final String from = "vgurututor@gmail.com";
                            	    final String pss = "8973415069";
                            	    String host = "smtp.gmail.com";
                            	    Properties props = new Properties();
                            	    props.put("mail.smtp.host", host);
                            	    props.put("mail.transport.protocol", "smtps");
                            	    props.put("mail.smtp.auth", "true");
                            	    props.put("mail.smtp.starttls.enable", "true");
                            	    props.put("mail.smtp.user", from);
                            	    props.put("mail.smtp.password", pss);
                            	    props.put("mail.smtp.port", "587");

                            	    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
                            	        @Override
                            	        protected PasswordAuthentication getPasswordAuthentication() {
                            	            return new PasswordAuthentication(from, pss);
                            	        }
                            	    });
                            	    String o="";
                            	    messg+=finalscore;
                            	    try {
                            	        MimeMessage message = new MimeMessage(mailSession);

                            	        message.setFrom(new InternetAddress(from));

                            	        message.addRecipient(Message.RecipientType.TO , new InternetAddress(to));

                            	        message.setSubject(subject);

                            	        message.setText(messg);

                            	        Transport.send(message);

                            	        result = "Your mail sent successfully....";

                            	    } catch (MessagingException mex) {

                            	        mex.printStackTrace();

                            	        out.println(mex);

                            	        result = "Error: unable to send mail....";

                            	    }

                           
                        }
                        else
                        {
                            out.print("Sorry some issue ");
                        }
                	}
                }
%>
            </form>
<SCRIPT LANGUAGE="JavaScript">
           
    
            function finalans()
            {
               var n1=document.form1.r1.value;
                
                
                <% String n2;%>
                        <% n2=srr.getString(8);%>
               var v2="<%=n2%>";
                            if(n1===v2)
                            {
                               var counterone = 0
                                counterone = parseInt(document.form1.hiddenone.value) + 10
               
                                document.form1.hiddenone.value = counterone
                
                                var counter = 0
                                counter = parseInt(document.form1.hidden.value) + 1
               
                                document.form1.hidden.value = counter
                                form1.submit()
                
                            }
                            else
                            {
                              var counter = 0
                              counter = parseInt(document.form1.hidden.value) + 1
               
                document.form1.hidden.value = counter
                form1.submit()  
                            }
                            
            }
            function moveNext()
            {
                var counter = 0
                counter = parseInt(document.form1.hidden.value) + 1
               
                document.form1.hidden.value = counter
                form1.submit()
            }    
            function movePrevious()
            {
                var counter = 0
                counter = parseInt(document.form1.hidden.value) - 1
                document.form1.hidden.value = counter
                form1.submit()
            }    
           
        </SCRIPT>


<%  	int n=srr.getInt(1);
if(current==2){
	a+=request.getParameter("r1");
session.setAttribute("thea",a);
}
else if(current==3){
	z+=request.getParameter("r1");
	session.setAttribute("thez",z);
	
}
else if(current==4){
	x+=request.getParameter("r1");
	session.setAttribute("thex",x);
	
}
else if(current==5){
	y+=request.getParameter("r1");
	session.setAttribute("they",y);
	
}
else if(current==6){
	s+=request.getParameter("r1");
	session.setAttribute("thes",s);
}
else if(current==7){
	s1+=request.getParameter("r1");
	session.setAttribute("thes1",s1);
}
else if(current==8){
	s2+=request.getParameter("r1");
	session.setAttribute("thes2",s2);
}
else if(current==9){
	s3+=request.getParameter("r1");
	session.setAttribute("thes3",s3);
}
else if(current==10){
	s4+=request.getParameter("r1");
	session.setAttribute("thes4",s4);
}
else if(current==11){
	s5+=request.getParameter("r1");
	session.setAttribute("thes5",s5);
}
else if(current==12){
	a+=request.getParameter("r1");
	session.setAttribute("thea",a);
	
}
else if(current==13){
	z+=request.getParameter("r1");
	session.setAttribute("thez",z);
	
}
else if(current==14){
	x+=request.getParameter("r1");
	session.setAttribute("thex",x);
	
}
else if(current==15){
	y+=request.getParameter("r1");
	session.setAttribute("they",y);
}
else if(current==16){
	s+=request.getParameter("r1");
	session.setAttribute("thes",s);
}
else if(current==17){
	s1+=request.getParameter("r1");
	session.setAttribute("thes1",s1);
}
else if(current==18){
	s2+=request.getParameter("r1");
	session.setAttribute("thes2",s2);
}
else if(current==19){
	s3+=request.getParameter("r1");
	session.setAttribute("thes3",s3);
}
else if(current==20){
	s4+=request.getParameter("r1");
	session.setAttribute("thes4",s4);
}
else if(current==21){
	s5+=request.getParameter("r1");
	session.setAttribute("thes5",s5);
	
}
else if(current==22){
	a+=request.getParameter("r1");
	session.setAttribute("thea",a);
	
}
else if(current==23){
	z+=request.getParameter("r1");
	session.setAttribute("thez",z);
	
}
else if(current==24){
	x+=request.getParameter("r1");
	session.setAttribute("thex",x);
}
else if(current==25){
	y+=request.getParameter("r1");
	session.setAttribute("they",y);
}
else if(current==26){
	s+=request.getParameter("r1");
	session.setAttribute("thes",s);
}
else if(current==27){
	s1+=request.getParameter("r1");
	session.setAttribute("thes1",s1);
}
else if(current==28){
	s2+=request.getParameter("r1");
	session.setAttribute("thes2",s2);
}
else if(current==29){
	s3+=request.getParameter("r1");
	session.setAttribute("thes3",s3);
}
else if(current==30){
	s4+=request.getParameter("r1");
	session.setAttribute("thes4",s4);
	
}
else if(current==31){
	s5+=request.getParameter("r1");
	session.setAttribute("thes5",s5);
	
}
else if(current==32){
	a+=request.getParameter("r1");
	session.setAttribute("thea",a);
	
}
else if(current==33){
	z+=request.getParameter("r1");
	session.setAttribute("thez",z);
}
else if(current==34){
	x+=request.getParameter("r1");
	session.setAttribute("thex",x);
}
else if(current==35){
	y+=request.getParameter("r1");
	session.setAttribute("they",y);
}
else if(current==36){
	s+=request.getParameter("r1");
	session.setAttribute("thes",s);
}
else if(current==37){
	s1+=request.getParameter("r1");
	session.setAttribute("thes1",s1);
}
else if(current==38){
	s2+=request.getParameter("r1");
	session.setAttribute("thes2",s2);
}
else if(current==39){
	s3+=request.getParameter("r1");
	session.setAttribute("thes3",s3);
	
}
else if(current==40){
	s4+=request.getParameter("r1");
	session.setAttribute("thes4",s4);
	
}
else if(current==41){
	s5+=request.getParameter("r1");
	session.setAttribute("thes5",s5);
	
}
else if(current==42){
	a+=request.getParameter("r1");
	session.setAttribute("thea",a);
}
else if(current==43){
	z+=request.getParameter("r1");
	session.setAttribute("thez",z);
}
else if(current==44){
	x+=request.getParameter("r1");
	session.setAttribute("thex",x);
}
else if(current==45){
	y+=request.getParameter("r1");
	session.setAttribute("they",y);
}
else if(current==46){
	s+=request.getParameter("r1");
	session.setAttribute("thes",s);
}
else if(current==47){
	s1+=request.getParameter("r1");
	session.setAttribute("thes1",s1);
}
else if(current==48){
	s2+=request.getParameter("r1");
	session.setAttribute("thes2",s2);
}
else if(current==49){
	s3+=request.getParameter("r1");
	session.setAttribute("thes3",s3);
}
else if(current==50){
	s4+=request.getParameter("r1");
	session.setAttribute("thes4",s4);
}
else if(current==51){
	s5+=request.getParameter("r1");
	session.setAttribute("thes5",s5);
}
else if(current==52){
	a+=request.getParameter("r1");
	session.setAttribute("thea",a);
}
else if(current==53){
	z+=request.getParameter("r1");
	session.setAttribute("thez",z);
}
else if(current==54){
	x+=request.getParameter("r1");
	session.setAttribute("thex",x);
}
else if(current==55){
	y+=request.getParameter("r1");
	session.setAttribute("they",y);
}
else if(current==56){
	s+=request.getParameter("r1");
	session.setAttribute("thes",s);
}
else if(current==57){
	s1+=request.getParameter("r1");
	session.setAttribute("thes1",s1);
}
else if(current==58){
	s2+=request.getParameter("r1");
	session.setAttribute("thes2",s2);
}
else if(current==59){
	s3+=request.getParameter("r1");
	session.setAttribute("thes3",s3);
}
else if(current==60){
	s4+=request.getParameter("r1");
	session.setAttribute("thes4",s4);
}
else if(current==61){
	s5+=request.getParameter("r1");
	session.setAttribute("thes5",s5);
}
else if(current==22){
	a+=request.getParameter("r1");
	session.setAttribute("thea",a);
}
else if(current==63){
	z+=request.getParameter("r1");
	session.setAttribute("thez",z);
}
else if(current==64){
	x+=request.getParameter("r1");
	session.setAttribute("thex",x);
}
else if(current==65){
	y+=request.getParameter("r1");
	session.setAttribute("they",y);
}
else if(current==66){
	s+=request.getParameter("r1");
	session.setAttribute("thes",s);
}
else if(current==67){
	s1+=request.getParameter("r1");
	session.setAttribute("thes1",s1);
}
else if(current==68){
	s2+=request.getParameter("r1");
	session.setAttribute("thes2",s2);
}
else if(current==69){
	s3+=request.getParameter("r1");
	session.setAttribute("thes3",s3);
}
else if(current==70){
	s4+=request.getParameter("r1");
	session.setAttribute("thes4",s4);
}
else if(current==71){
	s5+=request.getParameter("r1");
	session.setAttribute("thes5",s5);
}
else if(current==72){
	a+=request.getParameter("r1");
	session.setAttribute("thea",a);
}
else if(current==73){
	z+=request.getParameter("r1");
	session.setAttribute("thez",z);
}
else if(current==74){
	x+=request.getParameter("r1");
	session.setAttribute("thex",x);
}
else if(current==75){
	y+=request.getParameter("r1");
	session.setAttribute("they",y);
}
else if(current==76){
	s+=request.getParameter("r1");
	session.setAttribute("thes",s);
}
else if(current==77){
	s1+=request.getParameter("r1");
	session.setAttribute("thes1",s1);
}
else if(current==78){
	s2+=request.getParameter("r1");
	session.setAttribute("thes2",s2);
}
else if(current==79){
	s3+=request.getParameter("r1");
	session.setAttribute("thes3",s3);
}
else if(current==80){
	s4+=request.getParameter("r1");
	session.setAttribute("thes4",s4);
}
else if(current==81){
	s5+=request.getParameter("r1");
	session.setAttribute("thes5",s5);
}
else if(current==82){
	a+=request.getParameter("r1");
	session.setAttribute("thea",a);
}
else if(current==83){
	z+=request.getParameter("r1");
	session.setAttribute("thez",z);
}
else if(current==84){
	x+=request.getParameter("r1");
	session.setAttribute("thex",x);
}
else if(current==85){
	y+=request.getParameter("r1");
	session.setAttribute("they",y);
}
else if(current==86){
	s+=request.getParameter("r1");
	session.setAttribute("thes",s);
}
else if(current==87){
	s1+=request.getParameter("r1");
	session.setAttribute("thes1",s1);
}
else if(current==88){
	s2+=request.getParameter("r1");
	session.setAttribute("thes2",s2);
}
else if(current==89){
	s3+=request.getParameter("r1");
	session.setAttribute("thes3",s3);
}
else if(current==90){
	s4+=request.getParameter("r1");
	session.setAttribute("thes4",s4);
}
else if(current==91){
	s5+=request.getParameter("r1");
	session.setAttribute("thes5",s5);
}
else if(current==92){
	a+=request.getParameter("r1");
	session.setAttribute("thea",a);
}
else if(current==93){
	z+=request.getParameter("r1");
	session.setAttribute("thez",z);
}
else if(current==94){
	x+=request.getParameter("r1");
	session.setAttribute("thex",x);
}
else if(current==95){
	y+=request.getParameter("r1");
	session.setAttribute("they",y);
}
else if(current==96){
	s+=request.getParameter("r1");
	session.setAttribute("thes",s);
}
else if(current==97){
	s1+=request.getParameter("r1");
	session.setAttribute("thes1",s1);
}
else if(current==98){
	s2+=request.getParameter("r1");
	session.setAttribute("thes2",s2);
}
else if(current==99){
	s3+=request.getParameter("r1");
	session.setAttribute("thes3",s3);
}
else if(current==100){
	s4+=request.getParameter("r1");
	session.setAttribute("thes4",s4);
}
else if(current==101){
	s5+=request.getParameter("r1");
	session.setAttribute("thes5",s5);
}
else if(current==102){
	a+=request.getParameter("r1");
	session.setAttribute("thea",a);
}
else if(current==103){
	z+=request.getParameter("r1");
	session.setAttribute("thez",z);
}
else if(current==104){
	x+=request.getParameter("r1");
	session.setAttribute("thex",x);
}
else if(current==105){
	y+=request.getParameter("r1");
	session.setAttribute("they",y);
}
else if(current==106){
	s+=request.getParameter("r1");
	session.setAttribute("thes",s);
}
else if(current==107){
	s1+=request.getParameter("r1");
	session.setAttribute("thes1",s1);
}
else if(current==108){
	s2+=request.getParameter("r1");
	session.setAttribute("thes2",s2);
}
else if(current==109){
	s3+=request.getParameter("r1");
	session.setAttribute("thes3",s3);
}
else if(current==110){
	s4+=request.getParameter("r1");
	session.setAttribute("thes4",s4);
}
else if(current==111){
	s5+=request.getParameter("r1");
	session.setAttribute("thes5",s5);
}
else if(current==112){
	a+=request.getParameter("r1");
	session.setAttribute("thea",a);
}
else if(current==113){
	z+=request.getParameter("r1");
	session.setAttribute("thez",z);
}
else if(current==114){
	x+=request.getParameter("r1");
	session.setAttribute("thex",x);
}
else if(current==115){
	y+=request.getParameter("r1");
	session.setAttribute("they",y);
}
else if(current==116){
	s+=request.getParameter("r1");
	session.setAttribute("thes",s);
}
else if(current==117){
	s1+=request.getParameter("r1");
	session.setAttribute("thes1",s1);
}
else if(current==118){
	s2+=request.getParameter("r1");
	session.setAttribute("thes2",s2);
}
else if(current==119){
	s3+=request.getParameter("r1");
	session.setAttribute("thes3",s3);
}
else if(current==120){
	s4+=request.getParameter("r1");
	session.setAttribute("thes4",s4);
}
else if(current==121){
	s5+=request.getParameter("r1");
	session.setAttribute("thes5",s5);
}
else if(current==122){
	a+=request.getParameter("r1");
	session.setAttribute("thea",a);
}
else if(current==123){
	z+=request.getParameter("r1");
	session.setAttribute("thez",z);
}
else if(current==124){
	x+=request.getParameter("r1");
	session.setAttribute("thex",x);
}
else if(current==125){
	y+=request.getParameter("r1");
	session.setAttribute("they",y);
}
else if(current==126){
	s+=request.getParameter("r1");
	session.setAttribute("thes",s);
}
else if(current==127){
	s1+=request.getParameter("r1");
	session.setAttribute("thes1",s1);
}
else if(current==128){
	s2+=request.getParameter("r1");
	session.setAttribute("thes2",s2);
}
else if(current==129){
	s3+=request.getParameter("r1");
	session.setAttribute("thes3",s3);
}
else if(current==130){
	s4+=request.getParameter("r1");
	session.setAttribute("thes4",s4);
}
else if(current==131){
	s5+=request.getParameter("r1");
	session.setAttribute("thes5",s5);
}
else if(current==132){
	a+=request.getParameter("r1");
	session.setAttribute("thea",a);
}
else if(current==133){
	z+=request.getParameter("r1");
	session.setAttribute("thez",z);
}
else if(current==134){
	x+=request.getParameter("r1");
	session.setAttribute("thex",x);
}
else if(current==135){
	y+=request.getParameter("r1");
	session.setAttribute("they",y);
}
else if(current==136){
	s+=request.getParameter("r1");
	session.setAttribute("thes",s);
}
else if(current==137){
	s1+=request.getParameter("r1");
	session.setAttribute("thes1",s1);
}
else if(current==138){
	s2+=request.getParameter("r1");
	session.setAttribute("thes2",s2);
}
else if(current==139){
	s3+=request.getParameter("r1");
	session.setAttribute("thes3",s3);
}
else if(current==140){
	s4+=request.getParameter("r1");
	session.setAttribute("thes4",s4);
}
else if(current==141){
	s5+=request.getParameter("r1");
	session.setAttribute("thes5",s5);
}
else if(current==142){
	a+=request.getParameter("r1");
	session.setAttribute("thea",a);
}
else if(current==143){
	z+=request.getParameter("r1");
	session.setAttribute("thez",z);
}
else if(current==144){
	x+=request.getParameter("r1");
	session.setAttribute("thex",x);
}
else if(current==145){
	y+=request.getParameter("r1");
	session.setAttribute("they",y);
}
else if(current==146){
	s+=request.getParameter("r1");
	session.setAttribute("thes",s);
}
else if(current==147){
	s1+=request.getParameter("r1");
	session.setAttribute("thes1",s1);
}
else if(current==148){
	s2+=request.getParameter("r1");
	session.setAttribute("thes2",s2);
}
else if(current==149){
	s3+=request.getParameter("r1");
	session.setAttribute("thes3",s3);
}
else if(current==150){
	s4+=request.getParameter("r1");
	session.setAttribute("thes4",s4);
}
else if(current==151){
	s5+=request.getParameter("r1");
	session.setAttribute("thes5",s5);
}

else if(current==152){
	a+=request.getParameter("r1");
	session.setAttribute("thea",a);
}
else if(current==153){
	z+=request.getParameter("r1");
	session.setAttribute("thez",z);
}
else if(current==154){
	x+=request.getParameter("r1");
	session.setAttribute("thex",x);
}
else if(current==155){
	y+=request.getParameter("r1");
	session.setAttribute("they",y);
}
else if(current==156){
	s+=request.getParameter("r1");
	session.setAttribute("thes",s);
}
else if(current==157){
	s1+=request.getParameter("r1");
	session.setAttribute("thes1",s1);
}
else if(current==158){
	s2+=request.getParameter("r1");
	session.setAttribute("thes2",s2);
}
else if(current==159){
	s3+=request.getParameter("r1");
	session.setAttribute("thes3",s3);
}
else if(current==160){
	s4+=request.getParameter("r1");
	session.setAttribute("thes4",s4);
}
else if(current==161){
	s5+=request.getParameter("r1");
	session.setAttribute("thes5",s5);
}
else if(current==162){
	a+=request.getParameter("r1");
	session.setAttribute("thea",a);
}
else if(current==163){
	z+=request.getParameter("r1");
	session.setAttribute("thez",z);
}
else if(current==164){
	x+=request.getParameter("r1");
	session.setAttribute("thex",x);
}
else if(current==165){
	y+=request.getParameter("r1");
	session.setAttribute("they",y);
}
else if(current==166){
	s+=request.getParameter("r1");
	session.setAttribute("thes",s);
}
else if(current==167){
	s1+=request.getParameter("r1");
	session.setAttribute("thes1",s1);
}
else if(current==168){
	s2+=request.getParameter("r1");
	session.setAttribute("thes2",s2);
}
else if(current==169){
	s3+=request.getParameter("r1");
	session.setAttribute("thes3",s3);
}
else if(current==170){
	s4+=request.getParameter("r1");
	session.setAttribute("thes4",s4);
}
else if(current==171){
	s5+=request.getParameter("r1");
	session.setAttribute("thes5",s5);
}

else if(current==172){
	a+=request.getParameter("r1");
	session.setAttribute("thea",a);
}
else if(current==173){
	z+=request.getParameter("r1");
	session.setAttribute("thez",z);
}
else if(current==174){
	x+=request.getParameter("r1");
	session.setAttribute("thex",x);
}
else if(current==175){
	y+=request.getParameter("r1");
	session.setAttribute("they",y);
}
else if(current==176){
	s+=request.getParameter("r1");
	session.setAttribute("thes",s);
}
else if(current==177){
	s1+=request.getParameter("r1");
	session.setAttribute("thes1",s1);
}
else if(current==178){
	s2+=request.getParameter("r1");
	session.setAttribute("thes2",s2);
}
else if(current==179){
	s3+=request.getParameter("r1");
	session.setAttribute("thes3",s3);
}
else if(current==180){
	s4+=request.getParameter("r1");
	session.setAttribute("thes4",s4);
}
else if(current==181){
	s5+=request.getParameter("r1");
	session.setAttribute("thes5",s5);
	
}else if(current==182){
	a+=request.getParameter("r1");
	session.setAttribute("thea",a);
}
else if(current==183){
	z+=request.getParameter("r1");
	session.setAttribute("thez",z);
}
else if(current==184){
	x+=request.getParameter("r1");
	session.setAttribute("thex",x);
}
else if(current==185){
	y+=request.getParameter("r1");
	session.setAttribute("they",y);
}
else if(current==186){
	s+=request.getParameter("r1");
	session.setAttribute("thes",s);
}
else if(current==187){
	s1+=request.getParameter("r1");
	session.setAttribute("thes1",s1);
}
else if(current==188){
	s2+=request.getParameter("r1");
	session.setAttribute("thes2",s2);
}
else if(current==189){
	s3+=request.getParameter("r1");
	session.setAttribute("thes3",s3);
}
else if(current==190){
	s4+=request.getParameter("r1");
	session.setAttribute("thes4",s4);
}
else if(current==191){
	s5+=request.getParameter("r1");
	session.setAttribute("thes5",s5);
}



String a1=(String)session.getAttribute("thea");
String z1=(String)session.getAttribute("thez");
String x1=(String)session.getAttribute("thex");
String y1=(String)session.getAttribute("they");
String s0=(String)session.getAttribute("thes");
String s01=(String)session.getAttribute("thes1");
String s02=(String)session.getAttribute("thes2");
String s03=(String)session.getAttribute("thes3");
String s04=(String)session.getAttribute("thes4");
String s05=(String)session.getAttribute("thes5");
		String b=(String)session.getAttribute("thename");
		String date=request.getParameter("date");
		String time=request.getParameter("time");
		String std1=(String)session.getAttribute("thestd");
		Connection con=null;
		PreparedStatement stmt=null;
		String url = "jdbc:mysql://localhost:3306/smarttutor?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
		String driver = "com.mysql.jdbc.Driver";
		String userName ="root";
		String pass="8973415069";
		Class.forName(driver);
		con = DriverManager.getConnection(url,userName,pass);
		Statement stt=con.createStatement();
		String q="update score set ans1=?,ans2=?,ans3=?,ans4=?,ans5=?,ans6=?,ans7=?,ans8=?,ans9=?,ans10=?,date=?,time=?,std1=? where username='"+b+"'";
		stmt = con.prepareStatement(q);
		stmt.setString(1,a1);
		stmt.setString(2,z1);
		stmt.setString(3,x1);
		stmt.setString(4,y1);
		stmt.setString(5,s0);
		stmt.setString(6,s01);
		stmt.setString(7,s02);
		stmt.setString(8,s03);
		stmt.setString(9,s04);
		stmt.setString(10,s05);		
		stmt.setString(11,date);
		stmt.setString(12,time);
		stmt.setString(13,std1);
		int zz=stmt.executeUpdate();
		stmt.close();
		con.close();
		%>
		
</body>
</html>