<?php include("server.php") ?>
<!DOCTYPE HTML>
<html>
<head>
<title>Register User</title>
<script language="javascript">
function check()
{

 if(document.form1.id.value=="")
  {
    alert("Plese Enter Registration Number");
	document.form1.id.focus();
	return false;

  }
 
 if(document.form1.pass.value=="")
  {
    alert("Plese Enter Your Password");
	document.form1.pass.focus();
	return false;
  } 
  if(document.form1.cpass.value=="")
  {
    alert("Plese Enter Confirm Password");
	document.form1.cpass.focus();
	return false;
  }
  if(document.form1.pass.value!=document.form1.cpass.value)
  {
    alert("Confirm Password does not matched");
	document.form1.cpass.focus();
	return false;
  }
  
  
  return true;
  }
  
</script>

<style type="text/css">
  
  body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

#submit {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

#submit:hover {
  opacity: 0.8;
}


.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  width: 25%;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
  width: 25%;
}
</style>


</head>

<body>
<center>
<div class="floating-box">
  <h2> Register User </h2>
<form name="form1" method="post" action="signup.php" onSubmit="return check();" width="50%">

  <div class="imgcontainer">
    <img src="avatar.jpg" alt="Avatar" class="avatar">
  </div>

<div class="container">
   <input type="text" id="id" name="id" placeholder="Registration No" required="true" minlength="8"><br><br>
   <input type="password" id="pass" name="pass" placeholder="Password" required="true" minlength="6"><br><br>
   <input type="password" id="cpass" name="cpass" placeholder="Confirm Password" required="true" minlength="6"><br><br>
   <input type="submit" name="submit" value="Signup" id="submit">
 </div>
    
	<strong><p>Already Registered? <a href="login.php">Login Here</a></p></strong>
                              

</form>
</div>
</center>
 
 
</body>
</html>