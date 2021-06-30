<?php
//echo '<script>if(confirm("Please Enter Correct Old Password")){location.replace("changepassword.php")}</script>';
//echo "running php";

 session_start();
 //include("database.php");
 $id = $_SESSION["admin-login"];

$tab = intval($_GET['t']);
$r = intval($_GET['r']);
$c = intval($_GET['c']);
$status = intval($_GET['st']);



$pdo = new PDO('mysql:host=localhost;dbname=usersdb','root','');
$sql="SHOW TABLES";
$statement = $pdo->prepare($sql);
$statement->execute();
$tables=$statement->fetchAll(PDO::FETCH_NUM);
$pdo=null;


$url='localhost';
$username='root';
$password='';
$db='usersdb';
$conn=mysqli_connect($url,$username,$password,$db);
if(!$conn){
 die('Could not Connect My Sql:' .mysql_error());
}



foreach($tables as $table)
{
	if($table[0]!="user")
	{
		
		$query="UPDATE $table[0] SET runned_classes = '$status', attended_classes = '$status' WHERE tab = '$tab' AND r = '$r' AND c = '$c'";
        $rs=mysqli_query($conn,$query)or die("Could Not Alter the table data in database");
   }
}






/*

$query="UPDATE $id SET runned_classes = '$status' WHERE tab = '$tab' AND r = '$r' AND c = '$c'";
$rs=mysqli_query($conn,$query)or die("Could Not Alter the table data in database");

*/

//mysqli_close($conn);
?>