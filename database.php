<?php

//Change database information here and in adminalteruserdata.php (at two places);


$url='localhost';
$username='root';
$password='';
$db='usersdb';
$conn=mysqli_connect($url,$username,$password,$db);
if(!$conn){
 die('Could not Connect My Sql:' .mysql_error());
}
?>




