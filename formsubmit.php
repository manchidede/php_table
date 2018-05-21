<?php

// define variables and set to empty values
         
if ($_SERVER["REQUEST_METHOD"] == "POST") {
   if (!empty($_POST["firstname"]) && !empty($_POST["lastname"]) && !empty($_POST["email"]) && !empty($_POST["phone"]) 
   && !empty($_POST["address"]) && !empty($_POST["about"])&& !empty($_POST["username"])&& !empty($_POST["password"])&& !empty($_POST["gender"])) {
    
    $firstname = $_POST["firstname"];
    $lastname = $_POST["lastname"];
    $email = $_POST["email"];
    $phone = $_POST["phone"];
    $address = $_POST["address"];
    $about = $_POST["about"];
    $usern=$_POST["username"];
    $passn=$_POST["password"];
    $gender=$_POST["gender"];

    include 'dbconnect.php';
    $createdata = "INSERT INTO formtable(firstname, lastname, email, phonenumber, address, about, username, password, gender)
        VALUES('$firstname','$lastname','$email','$phone','$address','$about','$usern','$passn','$gender')";

        if(mysqli_query($conn,$createdata)){
            echo "<script>alert('You successfully inserted data into your table');</script>";
        }else{
            echo "<script>alert('your insert did not go through');</script>";
        }
       }
       else{
           echo "<script>alert('One or more fields are empty');</script>";
       }
}
?>