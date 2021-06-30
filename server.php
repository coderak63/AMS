<?php
 
 session_start();
 include("database.php");

extract($_POST);

if(isset($login))
{
	$rs=mysqli_query($conn,"select * from user where reg_no='$id' and password='$pass'");
	if(mysqli_num_rows($rs)<1)
	{
		$found="N";
	}
	else
	{
		if($id=="admin")
		{
          $_SESSION["admin-login"]=$id;
		}else{
          $_SESSION["login"]=$id;
		}

	}
}


if (isset($_SESSION["login"]) )
{
header("Location: index.php");
exit;
}


if ( isset($_SESSION["admin-login"]) )
{
header("Location: admin.php");
exit;
}


if(isset($submit))
{
	$rs=mysqli_query($conn,"select * from user where reg_no='$id'");
if (mysqli_num_rows($rs)>0)
{
	//echo "<br><br><br><div class=head1>Login Id Already Exists</div>";
	echo '<script>alert("Username already exists.")</script>';
	//header("Location:signup.php");
	//exit;
}
else{
$query="insert into user(reg_no,password) values('$id','$pass')";
$rs=mysqli_query($conn,$query)or die("Could Not Perform the Query");

//day int, subject_code int, tab int, r int, c int, runned_classes int, attended_classes int, class_hour int

$query="CREATE TABLE $id ( day int, subject_code int, tab int, r int, c int, runned_classes int, attended_classes int, class_hour int )";
$rs=mysqli_query($conn,$query)or die("Could Not Create the Table");

$query="INSERT INTO $id SELECT * FROM admin";
$rs=mysqli_query($conn,$query)or die("Could Not Copy the Table");

//echo "<br><br><br><div class=head1>Your Login ID  $id Created Sucessfully</div>";
//echo "<br><div class=head1>Please Login using your Login ID</div>";
//echo "<br><div class=head1><a href=login.php>Login</a></div>";
echo '<script>if(confirm("Go to Login Page")){location.replace("login.php")}</script>';
 }

}









?>