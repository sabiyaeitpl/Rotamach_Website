<?php
include('layout/config.php');
$res=mysqli_fetch_assoc(mysqli_query($con,"SELECT * FROM `cms` where id=6"));
echo $res['description'];

?>