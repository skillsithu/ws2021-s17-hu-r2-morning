<?php
    @session_start();

    if ( isset($_SESSION['logged']) && $_SESSION['logged'] == true )
    {
        header("Location: buildings.php");
    }

    if ( isset($_POST['username']) && isset($_POST['password']) )
    {
        if ( $_POST['username'] == "admin" && $_POST['password'] == "123" )
        {
            $_SESSION['logged'] = true;
            header('Location: buildings.php');
        }
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
<body id="login">
    <div class="container">
        <form action="" method="POST">
            <div class="group">
                <label for="">User:</label>
                <input name="username" type="text" class="inpt">
            </div>
            <div class="group">
                <label for="">Password</label>
                <input name="password" type="password" class="inpt">
            </div>

            <input class="submit login" type="submit" value="Login">
        </form>
    </div>
</body>
</html>