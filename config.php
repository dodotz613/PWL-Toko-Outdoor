<?php

$db_host = "localhost";
$db_user = "root";
$db_pass = "";
$db_name = "alatgunung";

try {
    //create PDO connection
    $db = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user);
} catch(PDOException $e) {
    //show error
    die("Terjadi masalah: " . $e->getMessage());
}

$con = mysqli_connect("localhost","root","","alatgunung");
	if (mysqli_connect_errno()){
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
		}
?>
