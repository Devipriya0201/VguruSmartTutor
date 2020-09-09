<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page language="java" import="java.lang.*" import="java.sql.*" %>
<%
    String result;
    final String to = request.getParameter("ema");
    final String subject = "Forget Password";
     String messg="Hi! Please use this password in your login page.Your VGURU Password is :";
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
    try{
    String url = "jdbc:mysql://localhost:3306/smarttutor?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	String driver = "com.mysql.jdbc.Driver";
	String userName ="root";
	String password="8973415069";
    String p="";
    Connection con = null;
	Class.forName(driver);
	con = DriverManager.getConnection(url,userName,password);
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from userdetailss where ema='"+to+"'");
    if(rs.next()){
            p=rs.getString(9);
 
    }
    messg+=p;
    }
    catch(Exception e){}
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
%>
<script>
{
	alert("<% out.println(result);%>");
	}
	</script>
