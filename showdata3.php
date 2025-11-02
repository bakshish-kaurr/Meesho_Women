<?php
session_start();
error_reporting(0);
include "i4.php";
$conn=mysqli_connect("localhost","root","","csv_db");
if(!$conn)
die();
else
{
    echo "<div class='container'><h1 class='h1 text-center bg-light text-info'>Cart</h1></div><br>";
    if(isset($_SESSION[User_Id]) && $_SESSION[User_Id]!="")
    {
    $sqli="select * from cart where User_Id='$_SESSION[User_Id]'";
    $result = $conn->query($sqli);
    echo "<div class='container'><table class='table table-success table-hover table-striped'><thead><tr><td>Sr. No.</td><td>Product_Id</td><td>Product_Name</td><td>Price</td><td>Quantity</td><td>Total_amt</td><td>Image</td><td></td></tr></thead>";
    $count=0;
    $st=0;
    $bdg=0;
    while($row=mysqli_fetch_row($result))
    {   
    $count++;
    
    echo "<tbody><tr><td>$count</td><td>$row[1] </td><td>$row[2] </td><td>Rs.$row[3] </td><td>$row[4] </td><td>Rs.$row[5] </td><td><img src='$row[6]' height='50px' width='50px' </td><td><form method='post'> <input type='hidden' name='rem' value='$row[0]-$row[1]'><input type='submit' name='remove' value='Remove' class='btn btn-danger' ></form> </td></tr>";
    $st+=$row[5];
        
    }
    
    echo "</tbody></table><p style=text-align:right><font size=6 style='color:#FFFAFA;background-color:#ADD8E6;padding:10px 20px'>Sum total: Rs.$st</font></p></div>";
    
    }
    else
    echo "<script>alert('Sign up or Login first.')</script>";
}

if(isset($_POST["remove"]))
{
$rm=$_POST["rem"];
$r=explode("-",$rm);
$dlt="delete from cart where User_Id='$r[0]' and Product_Id='$r[1]'";
//echo "<script>alert()</script>";
//echo "ddd : $dlt";
$result = $conn->query($dlt);
//echo "<script>alert('Item removed.')</script>";

}

?>

