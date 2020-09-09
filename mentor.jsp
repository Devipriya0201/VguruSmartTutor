 <html lang="en" dir="ltr">
    <head>
        <title>Signin and Signup</title>
    <link rel = "icon" type = "image/png" href = "vgur.jpg"></head>
        
        <link rel="stylesheet" href="style.css">
        <script type="text/javascript">
            function display()
           {
               var frm=document.form2;
               var nam=frm.name.value;
               if(nam.length<3 || nam.length>30)
               {
                   alert("Invalid Firstname!..try again");
                   frm.name.focus();
                   return false;
               }
               var lnam=frm.lname.value;
               if(lnam.length<3 || lnam.length>30)
               {
                   alert("Invalid Lastname!..try again");
                   frm.name.focus();
                   return false;
               }
               var pnam=frm.pname.value;
               if(pnam.length<3 || pnam.length>30)
               {
                   alert("Invalid ParentName!..try again");
                   frm.name.focus();
                   return false;
               }
               var pas=frm.pass.value;
               if(pas.length>8 || pas.length<3)
               {
                   alert("Invalid password!..password should not exceed the length 8");
                   frm.pass.focus();
                   return false;
               }
               
               var age1=frm.age.value;
               if(age1<3||age1>50){
                   alert("Invalid age..!");
                   frm.age.focus();
                   return false;
               }
               var mail=frm.ema.value;
               var pattern1=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
               if (!(pattern1.test(mail)))
               {
                   alert("You have entered an invalid email address!");
                   frm.ema.focus();
                   return false;
               }
               
               var mobile=frm.mob.value;
               var pattern5=/^\d{10}$/;
               if(!(pattern5.test(mobile)))
               {
                   alert("Enter correct mobilenumber!");
                   frm.mob.focus();
                   return false;
               }
               
               
           }
       </script>
      
 
    </head>
    <body>

        <div class="container">
            <div class="outer">
                    <div class="content">
                        <div class="principal" style="left: 503.5;">
                            <h1>VGURU</h1>
                            <h2 style="height:72;color:orange;font-size:45px;">The Smart Tutor</h2>
                            <p><q>Education is the best <br>
                                WEAPON to change the world..
                               </q></p>
                               
                        </div>
                     </div>
                <div class="formbox" style="margin-top: -659;">
                   
                    <div class="button-box">
                        <div id="btn"></div>
                  
                    </div>
                    <div class="social-icons">
                    <br><br><br>
                    
                       <h3>Welcome to Mentor Pannel</h3>
                        
                    </div>
                    
                    <form  id="signin" action="mentorlogin.jsp" class="input-group"style="margin-top: 58px;" method="post" >
                        <p style="font-family: sans-serif; color: #999; opacity: 0.8;">New user?Signup First</p>
                        <input type="text" name="ema" class="input-field" placeholder="Email" required>
                                                 <br><br>
                        <lable style="font-family: sans-serif;font-size: 14px; color: grey;" for="cars"> Class  </lable>
                            <select style="height: 25px;" name="std" id="std">
                                <option value="stu">--Select--</option>
                             <option value="prekg">prekg</option>
                             <option value="lkg">lkg</option>
                             <option value="ukg">Ukg</option>
                             <option value="1st">1st standard</option>
                             <option value="2nd">2nd standard</option>
                             <option value="3rd">3rd standard</option>
                             <option value="4th">4th standard</option>
                             <option value="5th">5th standard</option>
                             <option value="6th">6th standard</option>
                             <option value="7th">7th standard</option>
                             <option value="8th">8th standard</option>
                             <option value="9th">9th standard</option>
                             <option value="10th">10th standard</option>
                              <option value="11th">11th BioMaths</option>
                             <option value="11thCS">11th MathsCS</option>
                             <option value="11thC">11th Commerce</option>
                             <option value="12th">12th BioMaths</option>
                             <option value="12thCS">12th MathsCS</option>
                             <option value="12thC">12th Commerce</option>
                            
                             </select>
                   <br><br>
                        <input type="password" class="input-field" name="pass" placeholder="Password" required>
<br><br>
                        <a style="font-size:15px;"href="mentorforget.jsp"> Forget Password?</a></span>
                        <br><br>                        
                        <button type="submit" class="submit-btn">Signin</button>
                        <br><br>
                           <a   href="mentorotp.jsp"
                             style="width:215px;color:black;"   class="otp"> Login using OTP  </a> 
                    </form>
                    <form name="form2" action="mentorreg.jsp" id="signup" method="post" class="input-group"style=" top:147px; margin-top:28px " onsubmit="return display()">
                        <p style="font-family: sans-serif; color: #999; opacity: 0.8;">Already registered?Signin</p>
                        <input type="text" name="name" class="input-field" placeholder="First Name" required>
                        <input type="text" name="lname" class="input-field" placeholder="Last Name" required>
                        <input type="number" name="age" class="input-field" placeholder="Age" required>
                         <br><br>
                        <lable style="font-family: sans-serif;font-size: 14px; color: grey;" for="cars"> Class  </lable>
                            <select style="height: 25px;" name="std" id="std">
                                <option value="stu">--Select--</option>
                             <option value="prekg">prekg</option>
                             <option value="lkg">Lkg</option>
                             <option value="ukg">Ukg</option>
                             <option value="1st">1st standard</option>
                             <option value="2nd">2nd standard</option>
                             <option value="3rd">3rd standard</option>
                             <option value="4th">4th standard</option>
                             <option value="5th">5th standard</option>
                             <option value="6th">6th standard</option>
                             <option value="7th">7th standard</option>
                             <option value="8th">8th standard</option>
                             <option value="9th">9th standard</option>
                             <option value="10th">10th standard</option>
                             <option value="11th">11th standard</option>
                             <option value="12th">12th standard</option>
                             </select>
                   
                        <input type="text" name="ema" class="input-field" placeholder="Email" required>
                        <input type="text" name="mob" class="input-field"  placeholder="Mobile" required>
                        <input type="password" name="pass" class="input-field" placeholder="Password" required>
                        <input type="checkbox" class="check-box"><span>I agree to the<a href="termscon.html"> terms and conditions</a></span>
                        <button type="submit" class="submit-btn">Signup</button>
                    </form>
                </div>
   
             </div>
        </div>
       <script src="script.js">
           </script>
               
    </body>
</html>            
