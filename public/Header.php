<!doctype html>
<html lang="en">
	<head>
		<title>GetActive&copy;</title>
		<link href="css/Style.css" rel="stylesheet" type="text/css" />
		<link rel="icon" type="image/png" href="images/Greenbelt1.png"> -->
		<script src="js/JS.js"></script>
	</head>
  
	<body>
		<aside class="Profile">
			<nav>
				<p>
				<?php $_SESSION['user'] = checkLogin();
				if($_SESSION['user'] === "Guest"){ ?>
					<a href="Home.php">Home</a> &nbsp;
					<a href="Login.php">Login</a> &nbsp;
					<a href="SignUp.php">Sign Up</a>
				<?php } else if($_SESSION['user'] === "Admin" || $_SESSION['user'] === "Mod"){ ?>
					<a href="Home.php">Home</a> &nbsp;
					<a href="LogoutHandler.php">Logout</a>
				<?php } else { ?>
					<a href="Home.php">Home</a> &nbsp;
					<a href="LogoutHandler.php">Logout</a>
				<?php } ?>
				<!-- <?php echo $_SESSION['user'] ?> -->
				</p>
			</nav>
		</aside>

		<header>
			<p>
				GET
				<br>
				ACTIVE
				<br>
				Forums
			</p>
		</header>