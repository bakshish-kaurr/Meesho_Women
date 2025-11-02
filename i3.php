<html>
<head>
  <title>Online Shopping app</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <style>  
  a.nav-link{font-weight:bold;text-align:center;font-family:arial;color:#FFFAFA;font-size:17px;padding:5px;margin:2px 26px}
  #nav1{background:#ADD8E6}  
#img3{height:390px;width:400px}
#img4{height:100px;width:100px}
#img4:hover{height:100px;width:100px;scale:2;transition-duration:1s}

#cr1{font-size:20px;background:white;padding:10px;font-family:arial}
#a2{text-decoration:none}
</style>
</head>
<body>
<?php

error_reporting(0);
include "i4.php";

if(isset($_GET["pic"]))
$rq=$_GET["pic"];
$conn=mysqli_connect("localhost","root","","csv_db");
if(!$conn)
die();
else
{
$sq="select website_data.Product_Id,website_data.Product_Name,website_data.Description,website_data.Price,website_data.Image,website_data2.Image_1,website_data2.Image_2,website_data2.Image_3,website_data2.Image_4 from website_data,website_data2 where website_data.Product_Id=website_data2.Product_Id and website_data.Image='$rq'";
$result = $conn->query($sq);
echo "<div class='container'><div class='row'>";
if($row=mysqli_fetch_array($result));
{

echo "<div class='col-xl-5 col-sm-8'><div class='card' id='div1' style='width:400px'><img class='card-img-top' src='$row[4]' id='img3'></div></div>";
echo "<div class='col-xl-2 col-sm-4'><div class='card' id='div2' style='width:100px'><img src='$row[5]' id='img4'><img src='$row[6]' id='img4'><img src='$row[7]' id='img4'><img src='$row[8]' id='img4'></div></div>";
echo"<div class='col-xl-5'><div class='card' id='cr1'>Product Id: $row[0]<br><br>Name: $row[1]<br><br>Price: Rs. $row[3]<br><br>Quantity: <input type='number' id='qt' default=1 value=1 min=1 max=20><br>Description: <br>$row[2]</div><br>";
echo"<br><center><input type='button' name='btnn' id='btnn' class='btn btn-info btn-lg'  value='Add to Cart'> <a href='i1.php' id='a2'> &nbsp &nbsp &nbsp<input type='button' class='btn btn-info btn-lg' value='Continue Shopping'></a></center>";
}   
echo"</div></div></div>";
}


?>
<script>
$(document).ready(function(){
  $("#btnn").click(function(){
    uid=$("#res").val();
    pid=$("#res1").val();
    pnm=$("#res2").val();
    pr=$("#res3").val();
    qt=$("#qt").val();
    img=$("#res4").val();
    amt=pr*qt;
    //$sql="insert into cart values('uid','$pid','$pnm','$pr','$qt','$amt','img','N/a')";
    $.ajax({
      type:"POST",
      url:"showdata2.php",
      data:{'User_Id':uid,'Product_Id':pid,'Product_Name':pnm,'Price':pr,'Quantity':qt,'Total_amt':amt,'Image':img,'Status':'na'},
      dataType: "text",
success : function(data){
alert(data);
//alert('Product added to cart.');
}
    });
    
  });
});
</script>
<input type="hidden" id="res" value="<?php echo $_SESSION[User_Id]; ?>">
<input type="hidden" id="res1" value="<?php echo $row[0]; ?>">
<input type="hidden" id="res2" value="<?php echo $row[1]; ?>">
<input type="hidden" id="res3" value="<?php echo $row[3]; ?>">
<input type="hidden" id="res4" value="<?php echo $row[4]; ?>">

</body>
</html>