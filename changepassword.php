<?php 

 session_start();
 include("database.php");

 if(!isset($_SESSION["login"]) )
{
header("Location: login.php");
exit;
}

if(isset($_POST["changepassword"]))
{

 $id = $_SESSION["login"];
 //echo $id;
 $query="SELECT password FROM user WHERE reg_no = '$id'";
 $result=mysqli_query($conn,$query)or die("Could not search the user");
 
 if($result == FALSE){
    throw new Exception(mysql_error($conn));
    
  }

  if($result->num_rows == 1){
  
   while($row = $result->fetch_assoc())
   {
     $p= $row['password'];
   }

   if($_POST["pass"]==$p)
 {
  $p=$_POST["npass"];
  $query="UPDATE user SET password = '$p' WHERE reg_no = '$id'";
    $rs=mysqli_query($conn,$query)or die("Could Not Change the password");
    echo '<script>if(confirm("Password Changed Successfully.")){location.replace("index.php")}</script>';
 }
 else{
  echo '<script>if(confirm("Please Enter Correct Old Password")){location.replace("changepassword.php")}</script>';
 }
}
else{
  echo '<script>if(confirm("Password Change Unsuccessful!")){location.replace("changepassword.php")}</script>';
} 


}

?>
<!DOCTYPE HTML>
<html>
<head>
<title>Change Password</title>
<script language="javascript">
function check()
{

 if(document.form1.pass.value=="")
  {
    alert("Plese Enter Old Password");
	document.form1.id.focus();
	return false;

  }
 
 if(document.form1.npass.value=="")
  {
    alert("Plese Enter New Password");
	document.form1.pass.focus();
	return false;
  } 
  if(document.form1.cnpass.value=="")
  {
    alert("Plese Enter Confirm New Password");
	document.form1.cpass.focus();
	return false;
  }
  if(document.form1.npass.value!=document.form1.cnpass.value)
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
  <h2> Change Password </h2>
<form name="form1" method="post" action="changepassword.php" onSubmit="return check();" width="50%">

  <div class="imgcontainer">
    <img src="avatar.jpg" alt="Avatar" class="avatar">
  </div>

<div class="container">
   <input type="password" id="pass" name="pass" placeholder="Old Password" required="true" minlength="6"><br><br>
   <input type="password" id="npass" name="npass" placeholder="New Password" required="true" minlength="6"><br><br>
   <input type="password" id="cnpass" name="cnpass" placeholder="Confirm New Password" required="true" minlength="6"><br><br>
   <input type="submit" name="changepassword" value="Change Password" id="changepassword">
 </div>
    
                              

</form>
</div>
</center>
 
 
</body>
</html>