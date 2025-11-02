<!DOCTYPE html>
<html lang="en">
<?php
session_start();

//$_SESSION[User_Id]=" ";
error_reporting(0);
$bdg=0;
$conn=mysqli_connect("localhost","root","","csv_db");
if(!$conn)
die();
else
{

  //echo "hello";
  if(isset($_SESSION[User_Id]) && $_SESSION[User_Id]!="")
  {
    $ss="select * from cart where User_Id='$_SESSION[User_Id]'";
    $result = $conn->query($ss);
    $bdg=mysqli_num_rows($result);
    //echo "cnt=".$bdg;
  }



if(isset($_POST["b1"]))
{
   
$a=$_POST["t1"];
$b=$_POST["t2"];
$c=$_POST["t3"];
$d=$_POST["t4"];
$e=$_POST["t5"];

$sq="select * from data_2 where User_Id=$a";    
$res=mysqli_query($conn,$sq);
if($row=mysqli_fetch_array($res))
echo "<script>alert('Duplicacy not allowed.')</script>";
else if($a==""||$b==""||$c==""||$d==""||$e=="")
echo "<script>alert('Please enter all the details.')</script>";
else
{
$sq="insert into data_2 values('$a','$b','$d','$e')";

if(mysqli_query($conn,$sq))
{
$_SESSION[User_Id]="User Id: $a";
echo "<script>alert('Record entered successfully.')</script>";
}
else
echo "<br>not";
}
}

if(isset($_POST["bt1"]))
{
$a1=$_POST["tx1"];
 $b1=$_POST["tx2"];

  $sq1="select * from data_2 where User_Id=$a1 and Password=$b1";    
  $res1=mysqli_query($conn,$sq1);
  if($row=mysqli_fetch_array($res1))
  {
    $_SESSION[User_Id]="$a1";
    
    //echo "<script>  alert('You are now logged in.')</script>";
  }
  else
  echo "<script>  alert('Record not found.')</script>";
}
}


if(isset($_POST["lg"]))
{
  unset($_SESSION[User_Id]);
  session_destroy();
}

?>
<head>
  <title>Online Shopping app</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<style>
    #l1{font-family:arial;font-size:20px}
    span{font-size:24px;font-weight:bold}
    .a1{color:black}
    .a1:hover{color:blue;text-decoration:underline}
    #header{border-radius:10px}
</style>
</head>
<body>
 
<div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold">Sign up</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form method="post">
      <div class="modal-body mx-3">
        <div class="md-form mb-3">
          <i class="fas fa-envelope prefix grey-text"></i>
          <input type="text" name="t1" class="form-control validate">
          <label>User_Id</label>
        </div>

        <div class="md-form mb-3">
          <i class="fas fa-lock prefix grey-text"></i>
          <input type="password" name="t2" class="form-control validate">
          <label>Password</label>
        </div>

        <div class="md-form mb-3">
          <i class="fas fa-lock prefix grey-text"></i>
          <input type="password" name="t3" class="form-control validate">
          <label>Confirm Password</label>
        </div>

        <div class="md-form mb-3">
          <i class="fas fa-lock prefix grey-text"></i>
          <input type="text" name="t4" class="form-control validate">
          <label>Mobile</label>
        </div>

        <div class="md-form mb-3">
          <i class="fas fa-lock prefix grey-text"></i>
          <input type="textarea" name="t5" class="form-control validate">
          <label>Address</label>
        </div>

      </div>
      <div class="modal-footer d-flex justify-content-center">
        <button class="btn btn-default" name="b1">Sign up</button>
      </div>
      <center>Already have an account?<a href="i1.php" class="a1"> Log in</a>  </center><br>
</form>
    </div>
  </div>
</div>






<div class="modal fade" id="modalLoginForm1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold">Log in</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form method="post">
      <div class="modal-body mx-3">
        <div class="md-form mb-3">
          <i class="fas fa-envelope prefix grey-text"></i>
          <input type="text" name="tx1" class="form-control validate">
          <label>User_Id</label>
        </div>
        <div class="md-form mb-3">
          <i class="fas fa-lock prefix grey-text"></i>
          <input type="password" name="tx2" class="form-control validate">
          <label>Password</label>
        </div>
        <div class="modal-footer d-flex justify-content-center">
        <button class="btn btn-default" name="bt1">Log in</button>
      </div>
      <center>New user?<a href="i1.php" class="a1"> Sign up</a>  </center>
</div></div></div></div>

<div class="container">
  <div class="text-left">
  <a href="i1.php"> <img src="logo.jpg" height=150px width=150px></a>
  <img src="header.jpg" height=70px width=550px id="header">
 <span><?php echo "$_SESSION[User_Id]"; ?></span>&nbsp;&nbsp;&nbsp;
<a href="" class="btn btn-default btn-rounded btn-info mb-4" data-toggle="modal" data-target="#modalLoginForm1">Login</a>
  <a href="" class="btn btn-default btn-rounded btn-info mb-4" data-toggle="modal" data-target="#modalLoginForm">Sign up</a>
  <input type="submit" class="btn btn-default btn-rounded btn-info mb-4" name="lg" value="Log out"></a>
  <a href="showdata3.php"><img src="cart.jpg" name="cart" id="cart" height=70 width=60 align="top"><span class="badge badge-primary"><?php echo $bdg; ?></span></a>

</div>
</div>



</body>
</html>