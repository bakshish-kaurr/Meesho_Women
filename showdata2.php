<?php
session_start();
error_reporting(0);

$conn=mysqli_connect("localhost","root","","csv_db");
if(!$conn)
die();
else
{ //echo "ddd : ".$_SESSION[User_Id];
    
    if(isset($_SESSION[User_Id]) && $_SESSION[User_Id]!="")
   {
   $uid=$_POST["User_Id"];
   $pid=$_POST["Product_Id"];
   $pnm=$_POST["Product_Name"];
   $pr=$_POST["Price"];
   $qt=$_POST["Quantity"];
   $amt=$_POST["Total_amt"];
   $img=$_POST["Image"];
   $st=$_POST["Status"];
$sql="insert into cart values('$uid','$pid','$pnm','$pr','$qt','$amt','$img','$st')";
//echo $sql;
if($result = $conn->query($sql))
echo "Product added to cart.";
else
echo "Error found.";

}
else
echo "Sign up or Login First."; 
}
?>