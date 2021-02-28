<?php
//Connect to database
$db_host = "localhost";
$db_name = "store";

$db_user = "BornRiot";
$db_pass = "vU*Y88N9Y3B";

// Create mysqli Object
$mysqli = new mysqli($db_host, $db_user, $db_pass,  $db_name);

// Error Handling
if (mysqli_connect_errno()) {
  echo 'This connection failed'.$mysqli_connect_error();
  die();
}



?>
