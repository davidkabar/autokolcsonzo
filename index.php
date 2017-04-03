<!DOCTYPE HTML>
<html>
<head>
	<title>Tutorial</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700&subset=latin,latin-ext" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="bootstrap.css" type="text/css">
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script> 
	<script type="text/javascript">
	$(document).ready(function() {
		$("ul#menu div").click(function() {
			//console.log("ready!");
			$(this).css("background-image","url(arrow_up.png)");
			$(this).parent().find("ul").slideDown("slow");
			$(this).parent().hover(
					function(){},
					function(){
						$(this).parent().find("div").css("background-image","url(arrow_down.png)");
						$(this).parent().find("ul").slideUp("slow");
					}
				);
		});
	});

</script>
</head>
<body>

<header class="container-fluid">
	<div class="row">
		<div class="container">
			<div class="row">

				<h1 class="col-sm-4">KABAR Autókölcsönző</h1>
				<nav class="col-sm-8">
			<ul id="menu">
			<li>
					<div>menu 1</div>
				<ul>
					
						<li><a href="">valami</a></li>
						<li><a href="">valami</a></li>
						<li><a href="">valami</a></li>
						
				</ul>
			</li>
			<li>
					<li><a href="">menu 2</a></li>
					<li><a href="">menu 3</a></li>
					<li><a href="">menu 4</a></li>
			</li>
				</nav>
			</div>
		</div>
	</div>
</header>

<div class="container-fluid main-image hidden-xs">
	<div class="row">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<p class="title">Lorem Ipsum</p>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin hendrerit pellentesque velit, a porta turpis porta sed. Praesent varius, turpis eget volutpat eleifend, libero lacus viverra magna, in dapibus justo ex bibendum ante. Donec rutrum suscipit quam, eleifend dignissim leo vestibulum id. In elementum quam nec lorem vehicula, nec blandit dolor dapibus.</p>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container">
	<div class="row">
		<div class="col-sm-6 col-md-3 col-sm-push-6 col-md-push-3">
			<div class="box">
				<img src="2.jpg" class="img-thumbnail">
				<h2>box 1</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin hendrerit pellentesque velit, a porta turpis porta sed. Praesent varius, turpis eget volutpat eleifend, libero lacus viverra magna, in dapibus justo ex bibendum ante.</p>
			</div>
		</div>
		<div class="col-sm-6 col-md-3 col-sm-pull-6 col-md-pull-3">
			<div class="box">
				<img src="3.jpg" class="img-thumbnail">
				<h2>box 2</h2>
				<?php include "./Login.php"; ?>
				
			</div>
		</div>
		<div class="col-sm-6 col-md-3 col-sm-push-6 col-md-push-3">
			<div class="box">
				<img src="4.jpg" class="img-thumbnail">
				<h2>box 3</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin hendrerit pellentesque velit, a porta turpis porta sed. Praesent varius, turpis eget volutpat eleifend, libero lacus viverra magna, in dapibus justo ex bibendum ante.</p>
			</div>
		</div>
		<div class="col-sm-6 col-md-3 col-sm-pull-6 col-md-pull-3">
			<div class="box">
				<img src="5.jpg" class="img-thumbnail">
				<h2>box 4</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin hendrerit pellentesque velit, a porta turpis porta sed. Praesent varius, turpis eget volutpat eleifend, libero lacus viverra magna, in dapibus justo ex bibendum ante.</p>
			</div>
		</div>
		
	</div>
</div>


</body>
</html>


