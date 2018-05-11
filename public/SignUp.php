<?php
	require_once("SessionHelper.php");
	session_start();
	if(isset($_SESSION['currentPage'])){
		if($_SESSION['currentPage'] !== "SignUp.php"){
			clearErrors();
		}
	}
  
	$_SESSION['currentPage'] = "SignUp.php";
	require_once('Header.php');
?>

		<p class = "Title">Sign Up</p>
		<hr>
	
		<form 
		class="Info" 
		method="POST" 
		action="SignUpHandler.php" 
		autocomplete="off">
			<p>
				<label 
				for="email"> 
					Email:
				</label>
				
				<input 
				type="email" 
				name="email" 
				maxlength="75" 
				value="
					<?php if(isset($_SESSION['presets']['email'])){ 
						echo $_SESSION['presets']['email']; 
					} ?>" >
					
				<?php displayError('email'); ?>
				<!--TODO javascript window pop up for rules on email-->
			</p>
			<p>
				<label 
				for="password"> 
					Password: 
				</label>
				
				<input 
				type="password" 
				name="password" 
				maxlength="75">
				
				<?php displayError('password'); ?>
				<!--TODO javascript window pop up for rules on password-->
			</p>
			<p>
				<label 
				for="passwordMatch"> 
					Confirm Password:
				</label>
				
				<input 
				type="password" 
				name="passwordMatch" 
				maxlength="75">
				
				<?php displayError('passwordMatch'); ?>
			</p>
			<input 
			type="submit" 
			value="Login">
		</form>	

<?php
    require_once('Footer.php');
?>