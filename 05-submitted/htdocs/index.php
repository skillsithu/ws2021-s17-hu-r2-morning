<?php
    @session_start();
    if ( !isset($_SESSION['logged']) && $_SESSION['logged'] == false )
    {
        header("Location: login.php");
    }
    else
    {
        header("Location: buildings.php");
    }