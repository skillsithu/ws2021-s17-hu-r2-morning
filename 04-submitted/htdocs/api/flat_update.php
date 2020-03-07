<?php
//header('Access-Control-Allow-Origin: http://skills-it.hu');
//header('Access-Control-Allow-Credentials: true');
//header('Access-Control-Allow-Headers: Content-Type');
header('Content-Type: application/json; charset=utf-8');

$server ="localhost";
$user ="skill17";
$pw="Shanghai2021";
$db="skills_it_04";
$return = array();

$con = new mysqli($server, $user, $pw, $db);
if($con->connect_error) die('Connect error!');
$con->set_charset('utf8');

if($_SERVER['REQUEST_METHOD'] == 'PUT'  && isset($_GET['id'])) {

    $put = json_decode(file_get_contents('php://input'), true);
    $sql = "CALL flat_update(?,?,?,?,?,?,?,?,?,?); ";
    $statem = $con->prepare($sql);
    $statem->bind_param('iiiidsdddi',
        $_GET['id'],
        $put['building_id'],
        $put['ref'],
        $put['floor'],
        $put['rooms'],
        $put['orientation'],
        $put['net_area'],
        $put['balcony_area'],
        $put['price'],
        $put['sold']
        );
    //$statem->execute();
    if($statem->execute()) {
        $statem->store_result();
        $variables = array();
        $meta = $statem->result_metadata();
        $data = array();
        $meta = $statem->result_metadata();
        while($field = $meta->fetch_field())
        {
            $variables[] = &$data[$field->name];
        }
        call_user_func_array(array($statem, 'bind_result'), $variables);
        $i=0;
        while($statem->fetch())
        {
            $array[$i] = array();
            foreach($data as $k=>$v)
                $return[$k] = $v;
            $i++;
        }

        $statem->close();
    }


} else $return = "No action made";
echo json_encode($return);

$con->close();

?>