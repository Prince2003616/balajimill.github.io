<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
	header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>about</title>
	
	<!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/style.css">
   
</head>
<body>

<?php include 'header.php'; ?>

<div class="heading">
   <h3>About Us</h3>
   <p> <a href="home.php">home</a> / about </p>
</div>

<section class="about">

   <div class="flex">
   
      <div class="image">
	     <img src="images/about-img.jpg" alt="">
	  </div>
	  
	  <div class="content">
	     <h3>Why Choose Us</h3>
		 <p>BEST QUALITY DHAL IN AFFORDABLE PRICE</p>
		 <p>Our Mill collects the dhal from the cultivators and packing it for the intermediate sellers. Also we sell the dhal before handovering the packed dhal to intermediates.</p>
		 <a href="contact.php" class="btn">contact us</a>
      </div>
	  
	</div>
	
</section>





<?php include 'footer.php'; ?>

<!-- custom js file link -->
<script src="js/script.js"></script>

</body>
</html>
