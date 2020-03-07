<?php
    @session_start();
    if ( !isset($_SESSION['logged']) && $_SESSION['logged'] !== true )
    {
        header("Location: login.php");
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Skills IT - Building Projects</title>
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
    <header>
        <div class="left"></div>
        <div class="logo">
            <img src="images/skills_it_management_logo.png" alt="">
        </div>
        <div class="text"><p>"The most lucrative investment I have ever made" +36 1 555-5555 <span><button class="disabled">EN</button><button class="disabled">HU</button></span></p></div>
        <div class="right"></div>
        <div class="menu">
            <ul>
                <li><a href="">Buildings and Flats</a></li>
                <li><a href="">Customers</a></li>
                <li><a href="">Import/Export</a></li>
            </ul>
            <ul>
                <li><a href="">Logout</a></li>
            </ul>
        </div>
    </header>
</body>
</html>