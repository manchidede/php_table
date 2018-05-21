<?php 
$url='localhost';
$username='root';
$password='manchidede12';
$dbname='phpform';

//Connect with mysql database
$conn = new mysqli($url,$username,$password,$dbname);
if($conn->connect_error){
    die('There was an error in connection'.$conn->connect_error);
}
?>