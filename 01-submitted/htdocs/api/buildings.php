<?php

$host = "localhost";
$dbname = "skills-it-01";
$username = "skill17";
$password = "Shanghai2021";
//buildings
$pdo = new PDO("mysql:host=$host;dbname=$dbname;",$username,$password);
$statement = $pdo->prepare("SELECT * FROM `buildings`;");
$statement->execute();
print_r(json_encode($statement->fetchAll()));

//print_r(explode("/",$_SERVER["REQUEST_URI"])[4]);


//flats
/*
$statement2 = $pdo->prepare("SELECT * FROM `flats`;");
$statement2->execute();
print_r(json_encode($statement2->fetchAll()));
*/