<?php

$servername = "localhost";
$database = "shapesproducts";
$username = "root";
$password = "mariadb";
// Create connection
$conectar = mysqli_connect($servername, $username, $password, $database);
// Check connection
if (!$conectar) {
    die("Connection failed: " . mysqli_connect_error());
}


?>
