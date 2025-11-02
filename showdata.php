
<?php
$conn=mysqli_connect("localhost","root","","csv_db");
if(!$conn)
die();
else
{
    $r=$_POST["tp"];
$sq="select Image,Product_ID,Product_Name,Price from website_data where category='$r'";
$result = $conn->query($sq);

if($row=mysqli_fetch_all($result))
{
    $data[]=$row;

}

echo json_encode($data);
}
