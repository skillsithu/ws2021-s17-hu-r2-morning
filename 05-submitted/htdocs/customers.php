<?php
    if ( !isset($_SESSION) || ( isset($_SESSION) && $_SESSION['logged'] == false) )
    {
        header("Location: login.php");
    }