<?php
 $myvar = "Hello";
 echo $myvar;

 // Creating an array in php
 $cars = array("Toyota", "Honda", "Ford", "Mazda");
 // Cannot echo out array, use for each loop

 foreach ($cars as $car){
   echo $car.'<br>';
   // Use HTML line break to seperate each vehicle
 }

 // H1 tags can also be used
 foreach ($cars as $car2){
   echo '<h1>'.$car2.'</h1>';
 }

 // Creating functions in PHP
 function my_func(){
   echo 'This is the first function in PHP';
 }

 my_func();

// Craete a function with a variable
 function new_func($var){
   return $var;
 }
 $word_1 = "Some Word";

 echo new_func($word_1);

 // Using files in php
  include ('includes/database.php');

 echo $_GET['id'];

 print_r($_GET);

 // foreach through the items of the array
 foreach ($_GET as $get){
   echo $get.'<br>';
 }

 ?>
