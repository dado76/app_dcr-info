<?php

$username = 'root';
$password = '';
$connection = new PDO( 'mysql:host=localhost;dbname=dcr_info', $username, $password );

?>
<?php
/*
Author: Javed Ur Rehman
Website: https://www.allphptricks.com/
*/


$con = mysqli_connect("localhost","root","","dcr_info");
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
?>
