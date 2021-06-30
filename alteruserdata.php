<?php
//echo '<script>if(confirm("Please Enter Correct Old Password")){location.replace("changepassword.php")}</script>';
echo "running php";

 session_start();
 include("database.php");
 $id = $_SESSION["login"];

$tab = intval($_GET['t']);
$r = intval($_GET['r']);
$c = intval($_GET['c']);
$status = intval($_GET['st']);


$query="UPDATE $id SET attended_classes = '$status' WHERE tab = '$tab' AND r = '$r' AND c = '$c'";
$rs=mysqli_query($conn,$query)or die("Could Not Alter the table data in database");


mysqli_close($conn);
?>