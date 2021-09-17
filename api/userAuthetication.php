<?php

    $connect = mysqli_connect("localhost","root","");
    $database = mysqli_select_db($connect,"mobileapp");

    $email = $_POST['email'];
    $password = $_POST['password'];

    $userAutheticationQuery = "select email from user_registration where email ";

?>