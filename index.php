<?php

session_start();
include("database.php");

if(!isset($_SESSION["login"]))
{
  header("Location:login.php");
}


  $now = new DateTime();
  $now->setTimeZone(new DateTimeZone('Asia/Kolkata'));

  $d= (int)$now->format('j');

  $m= (int)$now->format('n');

  $y= (int)$now->format('Y');
  
  $day_of_year= (int)$now->format('z');


  if($m>=8 && $m<=11 && $y==2020)
    {
      $today_day=$day_of_year-221;

    }else{
      $today_day=150;
    }




?>
<!DOCTYPE html>
<html>
<head>
<title>MCA 3 Attendance Management System</title>


<link rel="stylesheet" type="text/css" href="style/index.css">

<script type="text/javascript" src="javascript/index.js"></script>



</head>
<body onload="showTable()">
  
  <div class="collapse navbar-collapse" id="myNavbar">
    
    <ul class="nav navbar-nav">
      <li id="uname">Username: <?php echo $_SESSION["login"]; ?></li>
      <li><a href="logout.php" title="logout">Logout</a></li>
      <li><a href="changepassword.php" title="chng_pass">Change Password</a></li>
    
   </ul>

</div>



<br><br><br>

<div id="unrunned_classes" data="<?php

   $id=$_SESSION["login"];
   $query="SELECT tab, r, c FROM $id WHERE runned_classes=0 and attended_classes=0";
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

<div id="unattended_classes" data="<?php

   
   $id=$_SESSION["login"];
   $query="SELECT tab, r, c FROM $id WHERE runned_classes=1 and attended_classes=0";
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

<div id="attendance" data="<?php

   $courses=array(33101,33201,33102,33202,33103,33104,33203,33105,33204);
   
   for($i=0;$i<count($courses);$i++)
   {

   $id=$_SESSION["login"];
   //$query="SELECT tab, r, c FROM $id WHERE runned_classes=1 and attended_classes=0";
   $query="SELECT * FROM $id WHERE day<=$today_day AND subject_code='$courses[$i]' AND runned_classes=1";
   $result=mysqli_query($conn,$query)or die("Query unsuccessful");

   if($result == FALSE){
    throw new Exception(mysql_error($conn));
  }


  $at=0;
  $ru=0;
  if($result->num_rows > 0){
   while($row = $result->fetch_assoc())
   {
     $at+=$row['attended_classes']*$row['class_hour'];
     $ru+=$row['runned_classes']*$row['class_hour'];
   }
   
  }

  echo strval($courses[$i]).":".$at."/".$ru.",";
}

?>
">
</div>



<br><br>
<header>
<h1 style="text-align: center;"><span style="background-color: lightblue;padding: 10px;">MCA 3<sup>rd</sup> Semester Attendance Management System </span></h1>
<p style="text-align: center;"><span style="background-color: lightgreen;padding: 3px;"><strong>Designed by: Abhi</strong></span></p>
</header>
<br><br>


<center>
  <div>
    <h3 style="color: red;">Till Date: <?php echo $now->format('d/m/Y');?></h3>
    <div id="att"></div>
    <button onclick="location.reload()" class="change">Reload Attendance</button>
  </div>
</center>


<br><br>
<div style="margin-left: 50px;">
<div style="display: inline-block;"><circle style="background-color: blue;"></circle><h2 style="display: inline-block;">: Unrunned Classes</h2></div>
<div style="display: inline-block;"><circle style="background-color: red;"></circle><h2 style="display: inline-block;">: Unattended Classes</h2></div>
<div style="display: inline-block;"><circle style="background-color: yellow;"></circle><h2 style="display: inline-block;">: Holidays</h2></div>
</div>
<br>


<h3 style="float: left;color: red; margin-left: 50px;"><strong>***Instruction: </strong>Select only those classes which you have not attended and get your attendance till date.</h3>

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