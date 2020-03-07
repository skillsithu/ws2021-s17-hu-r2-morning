<?php


$host = "localhost";
$dbname = "skills-it-01";
$username = "skill17";
$password = "Shanghai2021";
//buildings
$pdo = new PDO("mysql:host=$host;dbname=$dbname;",$username,$password);

if(isset(explode("/",$_SERVER["REQUEST_URI"])[3])){
    $statement2 = $pdo->prepare("SELECT * FROM `flats` WHERE id = ".explode("/",$_SERVER["REQUEST_URI"])[3].";");
    $statement2->execute();
    print_r(json_encode($statement2->fetchAll()));
}else{
    $statement2 = $pdo->prepare("SELECT * FROM `flats`;");
    $statement2->execute();
    print_r(json_encode($statement2->fetchAll()));
}


