<?php
//header('Access-Control-Allow-Origin: http://skills-it.hu');
//header('Access-Control-Allow-Credentials: true');
//header('Access-Control-Allow-Headers: Content-Type');
header('Content-Type: application/json; charset=utf-8');

unset($_SESSION['USER']);
session_destroy();
?>