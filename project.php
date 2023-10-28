<?php
$mysqli = new mysqli("localhost",'root','','db_main');
$cc='';
if(isset($_GET['sel']))
{
    $cc=$_GET['sel'];
}
 if($cc!=''){
$ck="SELECT * FROM tb_data where address like '%".$cc."%'";
$res=$mysqli->query($ck);
 if($res){
$list =$res->fetch_all();
echo json_encode($list);
 }
else
echo "res is blank";
}
else{
    echo"it is blank";
}
?>
