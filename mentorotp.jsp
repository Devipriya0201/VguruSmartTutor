<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page language="java" import="java.lang.*" import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SIGNUPOTP</title>
</head>
<style>
    body{
        background-image: url(fin.jpeg);
        background-size: cover;
        background-attachment: fixed;
        height: 300%;
        width: 100%;
    }
    *{
        margin: 0px;
        padding: 0px;
        box-sizing: border-box;
    }
    .formbox{
    
    width: 380px;
    height: 280px;
    position: relative;
    margin-top: 240px;
    margin-left: 480px;
    margin-right: 0;
  
   background: #fff;
   opacity: 0.8;
   overflow: hidden;

    }
    .input-field{
    width: 80%;
    padding: 10px 0;
    margin: 3px 0;
    margin-left: 33px;
    margin-top: 53px;
    margin-bottom: 30px;
    border-left: 0;
    border-right: 0;
    border-top: 0;
    border-bottom: 1px solid #999;
    outline: none;
    background: transparent;
}
.submit-btn{
    
    margin-left: 20px;
    width: 85%;
    padding: 10px 10px;
    cursor: pointer;
    display: block;
    margin: auto;
    background: linear-gradient(to right,#ff105f ,#ffad06);
    border: 0;
    outline: none;
    border-radius: 30px;
}
</style>
<body>
    
    <div class="formbox" style="margin-top: 193px; margin-left: 465px;">
        <form method="POST" action="mentorotpconnection.jsp" id="signin" class="input-group"style="margin-top: 33px;" >
        <h2 style="margin-left: 22px; margin-top: 20px;">Email</h2>
        <input type="text" name="ema" class="input-field" placeholder="Enter the registered email" required>
        <button type="submit" class="submit-btn">Send</button>
        </form>
    </div>
    
</body>
   
</html>
