<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page language="java" import="java.lang.*" import="java.sql.*" %>
<%
String result;
String o="";
final String to = request.getParameter("ema");
session.setAttribute("theema",to);
final String subject = "Forget Password";
 String messg="Hi! Your OTP is :";
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
int otp=0;
double a=Math.random();
double b=a*100000;
otp=(int)b;
o+=otp;
messg+=" ";
messg+=otp;
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
String url = "jdbc:mysql://localhost:3306/smarttutor?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
String driver = "com.mysql.jdbc.Driver";
String userName ="root";
String pa="8973415069";
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con = DriverManager.getConnection(url,userName,pa);
String s="update mentordetails set otp=? where ema='"+to+"'";
PreparedStatement stmt=null;
stmt = con.prepareStatement(s);
        stmt.setString(1,o);
        stmt.executeUpdate();
        
    response.sendRedirect("mentorotp1.jsp");
%>
