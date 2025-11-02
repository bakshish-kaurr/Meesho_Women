<?php
if(isset($_GET["rq"]))
$rq=$_GET["rq"];

error_reporting(0);
include "i4.php";

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Online Shopping app</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <style>  
  a{color:white}
  a:hover{color:white;text-decoration:none}
  a.nav-link{font-weight:bold;text-align:center;font-family:arial;color:#FFFAFA;font-size:17px;padding:5px;margin:2px 26px}
  #nav1{background:#ADD8E6}
  </style>
</head>
<body>
<div class="container">
<nav class="navbar navbar-expand-sm" id="nav1">
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="#" id="i1">Ethnic Wear</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#" id="i2">Western Wear</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#" id="i3">Kurta Sets</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#" id="i4">Tops_Tunics</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#" id="i5">Jeans_Trousers</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#" id="i6">Co-ord Sets</a>
    </li>
  </ul><br>
</nav>
</div>
<br>

<script>
  $(document).ready(function(){
//alert("yes")

    rq="<?php echo $rq; ?>";
//alert(rq);
    $.ajax({
type:"POST",
url:"showdata.php",
data :{"tp":rq},
dataType : 'json',
success : function(data){
if(data!=null)
{str="<div class='row'>"
for(x=0;x<data.length;x++)
{for(y=0;y<data[x].length;y++)
{   str+="<div class='col-xl-3 col-sm-6'>";
    str+="<div class='card' id='div1' style='width:255px;height:450px'>";
    str+="<a href='i3.php?pic="+data[x][y][0]+"'><img class='card-img-top' src='"+data[x][y][0]+"' id='img2'></a>";
    str+="<div class='card-body'>Product ID: "+data[x][y][1]+"<br>Name: "+data[x][y][2]+"<br>Price: Rs. "+data[x][y][3]+"<br>";
    str+="<center><button id='btn1'><a href='i3.php?pic="+data[x][y][0]+"'>Buy Now</a></button></div></div><br></div>";
}
str+="</div>";
}
  $("#result").html('');
  $("#result").html(str);
}
}
});
  
$('#i1').click(function(){
rq="Ethnic_Wear";
$.ajax({
type:"POST",
url:"showdata.php",
data :{"tp":rq},
dataType : 'json',
success : function(data){
if(data!=null)
{str="<div class='row'>"
for(x=0;x<data.length;x++)
{for(y=0;y<data[x].length;y++)
{   str+="<div class='col-xl-3'>";
    str+="<div class='card' id='div1' style='width:255px;height:450px'>";
    str+="<a href='i3.php?pic="+data[x][y][0]+"'><img class='card-img-top' src='"+data[x][y][0]+"' id='img2'></a>";
    str+="<div class='card-body'>Product ID: "+data[x][y][1]+"<br>Name: "+data[x][y][2]+"<br>Price: Rs. "+data[x][y][3]+"<br>";
    str+="<center><button id='btn1'><a href='i3.php?pic="+data[x][y][0]+"'>Buy Now</a></button></div></div><br></div>";
}
str+="</div>";
}
  $("#result").html('');
  $("#result").html(str);
}
}
});
});

$('#i2').click(function(){
rq="Western_Wear";
$.ajax({
type:"POST",
url:"showdata.php",
data :{"tp":rq},
dataType : 'json',
success : function(data){
if(data!=null)
{str="<div class='row'>"
for(x=0;x<data.length;x++)
{for(y=0;y<data[x].length;y++)
{   str+="<div class='col-xl-3'>";
    str+="<div class='card' id='div1' style='width:255px;height:450px'>";
    str+="<a href='i3.php?pic="+data[x][y][0]+"'><img class='card-img-top' src='"+data[x][y][0]+"' id='img2'></a>";
    str+="<div class='card-body'>Product ID: "+data[x][y][1]+"<br>Name: "+data[x][y][2]+"<br>Price: Rs. "+data[x][y][3]+"<br>";
    str+="<center><button id='btn1'><a href='i3.php?pic="+data[x][y][0]+"'>Buy Now</a></button></div></div><br></div>";
}
str+="</div>";
}
  $("#result").html('');
  $("#result").html(str);
}
}
});
});

$('#i3').click(function(){
rq="Kurta_Sets";
$.ajax({
type:"POST",
url:"showdata.php",
data :{"tp":rq},
dataType : 'json',
success : function(data){
if(data!=null)
{str="<div class='row'>"
for(x=0;x<data.length;x++)
{for(y=0;y<data[x].length;y++)
{   str+="<div class='col-xl-3'>";
    str+="<div class='card' id='div1' style='width:255px;height:450px'>";
    str+="<a href='i3.php?pic="+data[x][y][0]+"'><img class='card-img-top' src='"+data[x][y][0]+"' id='img2'></a>";
    str+="<div class='card-body'>Product ID: "+data[x][y][1]+"<br>Name: "+data[x][y][2]+"<br>Price: Rs. "+data[x][y][3]+"<br>";
    str+="<center><button id='btn1'><a href='i3.php?pic="+data[x][y][0]+"'>Buy Now</a></button></div></div><br></div>";
}
str+="</div>";
}
  $("#result").html('');
  $("#result").html(str);
}
}
});
});

$('#i4').click(function(){
rq="Tops_Tunics";
$.ajax({
type:"POST",
url:"showdata.php",
data :{"tp":rq},
dataType : 'json',
success : function(data){
if(data!=null)
{str="<div class='row'>"
for(x=0;x<data.length;x++)
{for(y=0;y<data[x].length;y++)
{   str+="<div class='col-xl-3'>";
    str+="<div class='card' id='div1' style='width:255px;height:450px'>";
    str+="<a href='i3.php?pic="+data[x][y][0]+"'><img class='card-img-top' src='"+data[x][y][0]+"' id='img2'></a>";
    str+="<div class='card-body'>Product ID: "+data[x][y][1]+"<br>Name: "+data[x][y][2]+"<br>Price: Rs. "+data[x][y][3]+"<br>";
    str+="<center><button id='btn1'><a href='i3.php?pic="+data[x][y][0]+"'>Buy Now</a></button></div></div><br></div>";
}
str+="</div>";
}
  $("#result").html('');
  $("#result").html(str);
}
}
});
});

$('#i5').click(function(){
rq="Jeans_Trousers";
$.ajax({
type:"POST",
url:"showdata.php",
data :{"tp":rq},
dataType : 'json',
success : function(data){
if(data!=null)
{str="<div class='row'>"
for(x=0;x<data.length;x++)
{for(y=0;y<data[x].length;y++)
{   str+="<div class='col-xl-3'>";
    str+="<div class='card' id='div1' style='width:255px;height:450px'>";
    str+="<a href='i3.php?pic="+data[x][y][0]+"'><img class='card-img-top' src='"+data[x][y][0]+"' id='img2'></a>";
    str+="<div class='card-body'>Product ID: "+data[x][y][1]+"<br>Name: "+data[x][y][2]+"<br>Price: Rs. "+data[x][y][3]+"<br>";
    str+="<center><button id='btn1'><a href='i3.php?pic="+data[x][y][0]+"'>Buy Now</a></button></div></div><br></div>";
}
str+="</div>";
}
  $("#result").html('');
  $("#result").html(str);
}
}
});
});

$('#i6').click(function(){
rq="Co-ord_Sets";
$.ajax({
type:"POST",
url:"showdata.php",
data :{"tp":rq},
dataType : 'json',
success : function(data){
if(data!=null)
{str="<div class='row'>"
for(x=0;x<data.length;x++)
{for(y=0;y<data[x].length;y++)
{   str+="<div class='col-xl-3'>";
    str+="<div class='card' id='div1' style='width:255px;height:450px'>";
    str+="<a href='i3.php?pic="+data[x][y][0]+"'><img class='card-img-top' src='"+data[x][y][0]+"' id='img2'></a>";
    str+="<div class='card-body'>Product ID: "+data[x][y][1]+"<br>Name: "+data[x][y][2]+"<br>Price: Rs. "+data[x][y][3]+"<br>";
    str+="<center><button id='btn1'><a href='i3.php?pic="+data[x][y][0]+"'>Buy Now</a></button></div></div><br></div>";
}
str+="</div>";
}
  $("#result").html('');
  $("#result").html(str);
}
}
});
});

});
 </script>

</body>
</html>