<?php
	require_once("SessionHelper.php");
	session_start();
  
	$_SESSION['currentPage'] = "Welcome.php";
	require_once('Header.php');
?>
		<section>
			<p id="Welcome">
				Welcome to GetActive!
			</p>
		</section>

		<section class="Info">
			<p id="Creds">
				Your new account has been created successfully.
			</p>
			<p id="Creds">
				Email: <?php echo $_SESSION['email'] ?>
				<br>
				Password: <?php echo $_SESSION['password'] ?>
				<br>
				Username: <?php echo $_SESSION['name'] ?>
			</p>
		</section>
		
		<?php 
			logoutUser(); 
		?>

<?php
    require_once('Footer.php');
?>








