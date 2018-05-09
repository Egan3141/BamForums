<?php
	require_once("SessionHelper.php");
	session_start();
	
	// Ensure that the previous page is not the same as this one.
	if(isset($_SESSION['previousPage'])){
		//Do nothing to previousPage
	} else {
		$_SESSION['previousPage'] = $_SESSION['currentPage'];
	}
	if($_SESSION['currentPage'] !== "Login.php"){
		clearErrors();
	}
	$_SESSION['currentPage'] = "Login.php";
	
	require_once('Header.php');
?>
		<p 
		class = "Title">
			Login
		</p>
		<hr>
	
		<form 
		class="Info" 
		method="POST" 
		action="LoginHandler.php" 
		autocomplete="off">
			<p>
				<label 
				for="email" >
					<!-- Warn users less detail will be given when failing to login. -->
					<?php if(isset($_SESSION['emailAttempts']) && $_SESSION['emailAttempts'] === 2){
						?> We cannot chance a user trying to gain access to someone
							else's account. <br> We will no longer tell you if the email
							exists. <br>
					<?php } ?>
					Email:
				</label>
				
				<input 
				type="email" 
				name="email" 
				maxlength="75" 
				value="
					<?php if(isset($_SESSION['presets']['email'])){ 
						echo $_SESSION['presets']['email']; 
						} 
					?>" >
				<?php displayError('email'); ?>
				<!--TODO javascript window pop up for rules on email-->
			</p>
			<p>
				<label 
				for="password">
					<!-- Warn users less detail will be given when failing to login. -->
					<?php if(isset($_SESSION['passwordAttempts'])) {
						if($_SESSION['passwordAttempts'] === 2){
						?> We cannot chance a user trying to gain access to someone
							else's account. <br> This account will be locked for 1 
							hour on the next failed attempt. <br>
					<?php } else if($_SESSION['passwordAttempts'] > 2) {?>
							This account has been notified of the failed attempts and
							that it has now been locked.
					<?php }} ?>
							
					Password: 
				</label>
				
				<input 
				type="password" 
				name="password">
				<?php displayError('password'); ?>
				<!--TODO javascript window pop up for rules on password-->
			</p>
			<input type="submit" value="Login">
		</form>
<?php
    require_once('Footer.php');
?>