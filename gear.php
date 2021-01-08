<?php

session_start();
include('config.php');
$status="";
if (isset($_POST['code']) && $_POST['code']!=""){
$code = $_POST['code'];
$result = mysqli_query($con,"SELECT * FROM `product4` WHERE `code`='$code'");
$row = mysqli_fetch_assoc($result);
$name = $row['name'];
$code = $row['code'];
$price = $row['price'];
$image = $row['image'];

$cartArray = array(
	$code=>array(
	'name'=>$name,
	'code'=>$code,
	'price'=>$price,
	'quantity'=>1,
	'image'=>$image)
);

if(empty($_SESSION["shopping_cart"])) {
	$_SESSION["shopping_cart"] = $cartArray;
	$status = "<div class='box'>Produk telah ditambahkan ke keranjang!</div>";
}else{
	$array_keys = array_keys($_SESSION["shopping_cart"]);
	if(in_array($code,$array_keys)) {
		$status = "<div class='box' style='color:red;'>
		Produk sudah ditambahkan!</div>";
	} else {
	$_SESSION["shopping_cart"] = array_merge($_SESSION["shopping_cart"],$cartArray);
	$status = "<div class='box'>Produk telah ditambahkan ke keranjang!</div>";
	}

	}
}
?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <title>NORTH THE FACE</title>
    <link rel="shortcut icon" href="images/logo.png" type="image/png">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/aos.css">
    <link rel="stylesheet" href="css/style2.css">
    <link rel='stylesheet' href='css/style3.css' type='text/css' media='all' />

  </head>
  <body>


  <div class="site-wrap">
    <div class="bg-light py-3">
      <div class="container">
        <div class="cart_div">
        <a href="cart.php"><img src="images/cart-icon.png" /> Cart</a>
        </div>
        <div class="row">
          <div class="col-md-12 mb-0"><a href="index.php">Home</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">Gear</strong></div>
        </div>
      </div>
    </div>
  </div>


<?php

$result = mysqli_query($con,"SELECT * FROM `product4`");
while($row = mysqli_fetch_assoc($result)){
		echo "<div class='product_wrapper'>
			  	<form method='post' action=''>
			  	<input type='hidden' name='code' value=".$row['code']." />
			  	<div class='image'><img src='".$row['image']."' /></div>
			  	<div class='name'>".$row['name']."</div>
		   	  <div class='price'>Rp. ".$row['price']."</div>
			  	<button type='submit' class='buy'>Beli Sekarang</button>
			  	</form>
		   	  </div>";
        }
mysqli_close($con);
?>

<div style="clear:both;"></div>

<div class="message_box" style="margin: auto;">
<?php echo $status; ?>
</div>

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/aos.js"></script>
<script src="js/main.js"></script>

</body>
</html>
