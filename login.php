
<?php include("server.php") ?>

<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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

<h2>Login<h2>
<form name="form1" method="post" width="50%" action="login.php">

<div class="imgcontainer">
    <img src="avatar.jpg" alt="Avatar" class="avatar">
  </div>
 
 <div class="container">
   <input type="text" id="loginid2" name="id" placeholder="Registration No" required="true"><br><br>
   <input type="password" id="pass2" name="pass" placeholder="Password" required="true"><br><br>
   <input name="login" type="submit" id="submit" value="Login">
</div>

<?php
		  if(isset($found))
		  {
		  	//echo '<p class="w3-center w3-text-red">Invalid user id or password<br><a href="index.php">Please try again</p>';
		  	echo '<script>alert("Invalid User Id or Password.")</script>';
		  }
		  ?>

<h6><p>New User? <a href="signup.php">Register Here</a></p></h6>

</form>
</div>
</center>

</body>
</html>