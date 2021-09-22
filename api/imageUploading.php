<?php

    $connect = mysqli_connect("localhost","root","");
	$database = mysqli_select_db($connect,"mobileapp");

    $image = $_FILES['image'];

    $imagepath = '/uploads'.$image;

    $tmp_name = $_FILES['image']['tmp_name'];

    move_uploaded_file($tmp_name,$imagepath);

    $connect.query("INSERT INTO user_registration(image_upload) VALUES('$image')");
    



?>