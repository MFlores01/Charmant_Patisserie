<?php
session_start(); 
$error=''; 

if (isset($_POST['submit'])) {
if (empty($_POST['username']) || empty($_POST['password'])) {
$error = "Username or Password is invalid";
}
else
{
// Establishing Connection with Server by passing server_name, user_id and password as a parameter
require 'connection.php';
$conn = Connect();

// Define $username and $password
$username = mysqli_real_escape_string($conn, $_POST['username']);
$password = $_POST['password'];

// SQL query to fetch information of registered users and finds user match.
$query = "SELECT username, password FROM CUSTOMER WHERE username=? LIMIT 1";

// To protect MySQL injection for Security purpose
$stmt = $conn->prepare($query);
$stmt->bind_param("s", $username);
$stmt->execute();
$stmt->bind_result($username, $hashed_password);
$stmt->store_result();

if ($stmt->fetch())  
{
    if (password_verify($password, $hashed_password)) {
        $_SESSION['login_user2']=$username; // Initializing Session
        header("location: foodlist.php"); // Redirecting To Other Page
    } else {
        $error = "Username or Password is invalid";
    }
} else {
    $error = "Username or Password is invalid";
}
mysqli_close($conn); // Closing Connection
}
}
?>
