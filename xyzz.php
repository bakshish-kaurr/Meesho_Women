<!DOCTYPE html>
<html lang="en">

<head>
<style>  
  #img2{width:254px;height:280px}  
  #div1{background:lavender}
  #btn1{background:green;color:white}
</style>
</head>
<?php
include "sp.php";
?>
<body>
<?php

include "i4.php";
$conn=mysqli_connect("localhost","root","","csv_db");
if(!$conn)
die();
else
{
$sq="select * from website_data";
$result = $conn->query($sq);
echo "<div class='container'>
<div class='row'>";
while($row=mysqli_fetch_array($result))
{
echo "<div class='col-xl-3'>
<div class='card' id='div1' style='width:255px;height:450px'>
<img class='card-img-top' src='$row[6]' id='img2'>
<div class='card-body'>Product ID: $row[2]<br>Name: $row[3]<br>Price: Rs. $row[5]<br>
<center><button id='btn1'>Buy Now</button></div>
</div><br></div>";
}   
echo"</div></div>";
}
?>
</body>
</html>