<!DOCTYPE html>
<?php
error_reporting(0);

include "i4.php";
?>
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
  a.nav-link{font-weight:bold;text-align:center;font-family:arial;color:#FFFAFA;font-size:17px;padding:5px;margin:2px 26px}
  #nav1{background:#ADD8E6}
  a{color:black}
  .card-body{background:#BDEDFF}
  </style>
</head>
<body>
<div class="container">
<nav class="navbar navbar-expand-sm" id="nav1">
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="i2.php?rq=Ethnic_Wear" id="i1">Ethnic Wear</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="i2.php?rq=Western_Wear" id="i2">Western Wear</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="i2.php?rq=Kurta_Sets" id="i3">Kurta Sets</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="i2.php?rq=Tops_Tunics" id="i4">Tops_Tunics</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="i2.php?rq=Jeans_Trousers" id="i5">Jeans_Trousers</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="i2.php?rq=Co-ord_Sets" id="i6">Co-ord Sets</a>
    </li>
  </ul><br>
</nav>
</div>
<head>
<style>
.carousel-inner img {
width:100%;
height:500px;}
#img1{width:120px;height:180px}
#c1{background:#ADD8E6;text-align:center}
</style>
</head>
<body>
<br>
<div class="container">
<div id="pic" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#pic" data-slide-to="0" class="active"></li>
    <li data-target="#pic" data-slide-to="1"></li>
    <li data-target="#pic" data-slide-to="2"></li>
    <li data-target="#pic" data-slide-to="3"></li>
    <li data-target="#pic" data-slide-to="4"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img1.jpg">
    </div>
    <div class="carousel-item">
      <img src="img2.jpg"> 
    </div>
    <div class="carousel-item">
      <img src="img6.jpg"> 
    </div>
    <div class="carousel-item">
      <img src="img4.jpg"> 
    </div>
    <div class="carousel-item">
      <img src="img5.jpg"> 
    </div>
  </div>
    
    <a class="carousel-control-prev" href="#pic" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
    </a>
    <a class="carousel-control-next" href="#pic" data-slide="next">
    <span class="carousel-control-next-icon"></span>
    </a>
    </div>
</div>
<br>

<div class="container">
  <div class="row">
  <div class="col-xl-2">
  <div class="card" id="c1">
    <img class="card-img-top" id="img1" src="sr001.jpg" style="width:100%">
    <div class="card-body">    
    <h6 class="card-title"><a href="i2.php?rq=Ethnic_Wear">Ethnic Wear</a></h6>
    </div>
  </div>
  </div>
  <div class="col-xl-2">
  <div class="card" id="c1">
    <img class="card-img-top" id="img1" src="wr001.jpg" style="width:100%">
    <div class="card-body">    
    <h6 class="card-title"><a href="i2.php?rq=Western_Wear">Western Wear</a></h6>
    </div>
  </div>
  </div>
  <div class="col-xl-2">
  <div class="card" id="c1">
    <img class="card-img-top" id="img1" src="ks001.jpg" style="width:100%">
    <div class="card-body">    
    <h6 class="card-title"><a href="i2.php?rq=Kurta_Sets">Kurta Sets</a></h6>
    </div>
  </div>
  </div>
  <div class="col-xl-2">
  <div class="card" id="c1">
    <img class="card-img-top" id="img1" src="tp001.jpg" style="width:100%">
    <div class="card-body">    
    <h6 class="card-title"><a href="i2.php?rq=Tops_Tunics">Tops & Tunics</a></h6>
    </div>
  </div>
  </div>
  <div class="col-xl-2">
  <div class="card" id="c1">
    <img class="card-img-top" id="img1" src="jt001.jpg" style="width:100%">
    <div class="card-body">    
    <h6 class="card-title"><a href="i2.php?rq=Jeans_Trousers">Jeans</a></h6>
    </div>
  </div>
  </div>
  <div class="col-xl-2">
  <div class="card" id="c1">
    <img class="card-img-top" id="img1" src="cr001.jpg" style="width:100%">
    <div class="card-body">    
    <h6 class="card-title"><a href="i2.php?rq=Co-ord_Sets">Co-ord Sets</a></h6>
    </div>
  </div>
  </div>
  </div>
</div>

</body>
</html>