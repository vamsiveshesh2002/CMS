<?php include('server.php') ?>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Vellore Institue Of Technology-AP</title>
  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'><link rel="stylesheet" href="LoginCSS/Login1.css">
  <script type="text/javascript" src="LoginJS/login.js"></script>
</head>
<body>
<p class="tip"></p>
<div class="cont">
    <div class="form sign-in">
      <h2>Student  Login</h2>
      <form method="post" action="server.php" id="sign_in_form">
        <label id="email">
          <span>Email</span>
          <input type="email" name="email" id="signin_email" placeholder="xyz@vitap.ac.in" required pattern="(.+@vitap.ac.in)|(.+@st.vitap.ac.in)|(.+@std.vitap.ac.in)" title="Please enter an email with VIT-AP extension" /><br>
        </label>
        <label>
          <span>Password</span>
          <input type="password" name="password" id="signin_password" pattern=".{5,15}" required title="5 to 15 characters" placeholder="**********" />
        </label>
        <a href="forgot.html"><p class="forgot-pass">Forgot password?</p></a>
        <button class="submit" id="sign_in" name="login_student">Sign In</button>
      </form>
    </div>
      

  <div class="sub-cont">
    <div class="img">
      <div class="img__text m--up">
        <h1>Lecturer?</h1>
      </div>
      <div class="img__text m--in">
        <h1>Student?</h1>
      </div>
      <div class="img__btn">
        <span class="m--up">Lecturer</span>
        <span class="m--in">Student</span>
      </div>
    </div>
    <div class="form sign-up">
      <!--<h2 id="regtext">Register</h2>-->
      <form method="post" id="admin_login" action="lecturer_login.php">
        <h2>Lecturer Login </h2>
        <label>
        <span>Email</span>
          <input type="email" name="email" id="admin_signin_email" placeholder="xyz@vitap.ac.in" required pattern="(.+@vitap.ac.in)|(.+@st.vitap.ac.in)"
          title="Please enter an email with Medipol extension"><br>
      </label>
      <label>
          <span>Password</span>
          <input type="password" name="password" id="admin_signin_password" pattern=".{5,15}" required title="5 to 15 characters" placeholder="**********" > <br>
      </label>
    <button class="submit" name="login_lecturer">Sign In</button>
    </form>
  </div>

        
      </form>
    </div>
  </div>
</div>

<a class="icon-link">
</a>
 <script type="text/javascript" src="LoginJS/script.js"></script>
</body>
</html>
