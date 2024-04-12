<?php

session_start();


// Database credentials
$servername = "localhost";
$username = "root";
$password = "";
$database = "complete-blog-php";

// connect to database
$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
        die("Error connecting to database: " . mysqli_connect_error());
}

define('ROOT_PATH', realpath(dirname(__FILE__)));
define('BASE_URL', 'http://localhost/TinyTales_Blogging_Project/');
