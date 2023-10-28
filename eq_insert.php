<?php
$cc=mysqli_connect('localhost','root','','db_main');
$c=$_GET['name'];
$c1=$_GET['email'];
$c2=$_GET['number'];
$q1="INSERT INTO eq_data (name,email,phone) values('$c','$c1','$c2')";
$q2=mysqli_query($cc,$q1);
echo "done".$q2;
?>