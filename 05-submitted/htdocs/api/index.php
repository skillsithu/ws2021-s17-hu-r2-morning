<?php

    class Buildings
    {
        public $id;
        public $name;
        public $number_of_floors;
        public $address;
        public $count_of_flats;
    }

    class Flats
    {
        public $id, $building_id, $ref, $floor, $rooms, $orientation, $net_area, $balcony_area, $price, $sold;
    }

    try
    {
        $pdo = new PDO("mysql:dbname=skills_it_05;host=127.0.0.1", "skill17", "Shanghai2021");
    }
    catch( Exception $ex )
    {
        echo $ex->getMessage();
    }

    $uri = str_replace( "/api/", "", $_SERVER['REQUEST_URI'] );


    if ( $uri === "buildings" )
    {
        if ( $_SERVER['REQUEST_METHOD'] == "GET" )
        {
            $query = $pdo->prepare("SELECT id, name, number_of_floors, address FROM buildings");
            $query->execute();
            $result = $query->fetchAll(PDO::FETCH_CLASS, "Buildings");
            
            header("Content-Type: application/json");
            echo json_encode($result);
            //var_dump($result);
        }
    }
    elseif ( $uri === "flats" )
    {
        if ( $_SERVER['REQUEST_METHOD'] == "GET" )
        {
            $query = $pdo->prepare("SELECT * FROM mytable");
            $query->execute();
            $result = $query->fetchAll(PDO::FETCH_CLASS, "Flats");
            
            header("Content-Type: application/json");
            echo json_encode($result);
        }
    }
    elseif ( strpos($uri, "flats/") !== -1 )
    {
        $id = str_replace( "flats/", "", $uri );
        echo $id;
    }