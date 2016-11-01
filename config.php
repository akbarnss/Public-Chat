<?php
session_start();
// ini_set("display_errors","on");
if(!isset($dbh)){
 
 date_default_timezone_set("UTC");
 $musername = "root";
 $mpassword = "";
 $hostname  = "localhost";
 $dbname    = "chatting";
 $dbh=new PDO('mysql:dbname='.$dbname.';host='.$hostname.";port=3306",$musername, $mpassword);
 /*Change The Credentials to connect to database.*/
 include("user_online.php");
}
?>