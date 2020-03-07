<?php
// GET

$server ="localhost";
$user ="skill17";
$pw="Shanghai2021";
$db="skills_it_04";
$return = array();

$con = new mysqli($server, $user, $pw, $db);
if($con->connect_error) die('Connect error!');
$con->set_charset('utf8');

$sql = "SELECT * FROM v_buildings; ";
$result = $con->query($sql);
if($result->num_rows >0) {
    while ($row = $result->fetch_assoc()) {
        $return[] = $row;
    }
}
else $return = "Null rows";

echo json_encode($return);

$con->close();
?>