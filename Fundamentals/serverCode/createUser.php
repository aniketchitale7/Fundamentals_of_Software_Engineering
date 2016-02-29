<?php
require_once '../includes/db.php'; // The mysql database connection script
echo"Hello World";
if(isset($_GET['user_name']) && isset($_GET['password']))
{
    $user_name = $_GET['user_name'];
    $password = $_GET['password'];
    $name = $_GET['name'];
    $age = $_GET['age'];
    $gender = $_GET['gender'];
    $designation = $_GET['designation'];
    $designationID = $_GET['designationID'];



    $query="INSERT INTO login(email,password,name,age,gender,designation,designationId)  VALUES ('$user_name', '$password', '$name' ,'$age', '$gender' , '$designation','$designationId')";
    $result = $mysqli->query($query) or die($mysqli->error.__LINE__);
    $result = $mysqli->affected_rows;

    // Attempted mail. returning the results of the email sent off

    $result = $mail($user_name, "Congratulations!", "Hello,\r\n\r\nThank you for creating your account with us!\r\n\r\n-The OCTA team", 'From: octa@gmail.com');

    echo $json_response = json_encode($result);
}
?>