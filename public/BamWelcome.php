<?php
	require_once("BamSessionHelper.php");
	session_start();
  
	$_SESSION['currentPage'] = "BamWelcome.php";
	require_once('BamHeader.php');
?>
		<section>
			<p id="Welcome">
				Welcome to Bam Forums!
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
    require_once('BamFooter.php');
?>








