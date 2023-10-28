<?php
$q1=mysqli_connect('localhost','root','','db_main');
$c=$_GET['name'];
$c1=$_GET['address'];
$c2=$_GET['phone'];
$c3=$_GET['website'];
$c4=$_GET['longi'];
$c5=$_GET['lati'];
$c6=$_GET['date'];
$c7=$_GET['course'];
$c8=$_GET['description'];
$q2="INSERT INTO tb_data (institute,address,phone,website,longi,lati,date,course,description)values('$c','$c1','$c2','$c3','$c4','$c5','$c6','$c7','$c8')";
$q3=mysqli_query($q1,$q2);
if($q3>0)
echo "done".$q3;
else
echo mysqli_error($q1);

?>