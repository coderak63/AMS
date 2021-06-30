<?php

session_start();
include("database.php");

if(!isset($_SESSION["admin-login"]))
{
  header("Location:login.php");
}
?>
<!DOCTYPE html>
<html>
<head>
<title>Admin Login</title>

<link rel="stylesheet" type="text/css" href="style/admin.css">


<script type="text/javascript" src="javascript/admin.js"></script>

</head>
<body onload="showTable()">
  
  <div class="collapse navbar-collapse" id="myNavbar">
    
    <ul class="nav navbar-nav">
      <li id="uname">ADMIN LOGIN</li>
      <li><a href="logout.php" title="logout">Logout</a></li>
      <li><a href="adminchangepassword.php" title="chng_pass">Change Password</a></li>
      
</ul>
</div>

<br><br><br>

<div id="unrunned_classes" data="<?php

   
   $query="SELECT tab, r, c FROM admin WHERE runned_classes=0 and attended_classes=0";
   $result=mysqli_query($conn,$query)or die("Query unsuccessful");

   if($result == FALSE){
    throw new Exception(mysql_error($conn));
    
  }

  if($result->num_rows > 0){
   while($row = $result->fetch_assoc())
   {
     echo $row['tab'].",".$row['r'].",".$row['c']."|";
   }
}
  

?>
">
</div>



<br><br><br><br>



<h1 style="text-align: center;">MCA 3<sup>rd</sup> Semester</h1>
<p id="txtHint"></p>

<div>
<table style="margin-left: 50px;" id="tab1">

</table>


<br><br><br>

<table style="margin-left: 50px;" id="tab2">

</table>
<br><br><br>

<table style="margin-left: 50px;" id="tab3">

</table>
<br><br><br>

<table style="margin-left: 50px;" id="tab4">

</table>
<br><br><br>



<table style="margin-left: 50px;" id="tab5">

</table>
<br><br><br>

<table style="margin-left: 50px;" id="tab6">

</table>
<br><br><br>

<table style="margin-left: 50px;" id="tab7">

</table>
<br><br><br>

<table style="margin-left: 50px;" id="tab8">

</table>
<br><br><br>


<table style="margin-left: 50px;" id="tab9">

</table>
<br><br><br>

<table style="margin-left: 50px;" id="tab10">

</table>
<br><br><br>

<table style="margin-left: 50px;" id="tab11">

</table>
<br><br><br>

<table style="margin-left: 50px;" id="tab12">

</table>
<br><br><br>


<table style="margin-left: 50px;" id="tab13">

</table>
<br><br><br>

<table style="margin-left: 50px;" id="tab14">

</table>
<br><br><br>

<table style="margin-left: 50px;" id="tab15">

</table>
<br><br><br>

<table style="margin-left: 50px;" id="tab16">

</table>
<br><br><br>
</div>


<br><br><br>



</body>
</html>