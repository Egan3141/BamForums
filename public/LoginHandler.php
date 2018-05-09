<?php
	session_start();
	require_once("Dao.php");
	require_once("SessionHelper.php");
	$dao = new Dao();

	//Get variables
	$email = htmlspecialchars($_POST['email']);
	$password = htmlspecialchars($_POST['password']);
	$errors = array();

	//Initalize valid.
	$valid = 1;

	if(strpos($email, '@u.boisestate.edu') != (strlen($email) - 17)){
		$errors['email'] = "Must be a boisestate student email.";
		$valid = 0;
	} else if(strlen($email) > 75){
		$errors['email'] = "Too long, must be less than 76 characters.";
		$valid = 0;
	} else if(!$dao->checkEmail($email)){
		if(isset($_SESSION['emailAttempts'])){
			if($_SESSION['emailAttempts'] > 2) {
				$errors['password'] = "Password or Email is wrong";
			} else {
				$_SESSION['emailAttempts'] = $_SESSION['emailAttempts'] + 1;
				$errors['email'] = "No account associated with this email";
			}
		} else {
			$errors['email'] = "No account associated with this email.";
			$_SESSION['emailAttempts'] = 1;
		}
		$valid = 0;
	}
	//If email is valid, check password.
	if($valid){
		if(strlen($password) < 6){
			$errors['password'] = "Too short, must be more than 6 characters.";
			$valid = 0;
		} else if(strlen($password) > 75){
			$errors['password'] = "Too long, must be less than 76 characters.";
			$valid = 0;
		} else if(!$dao->checkPassword($email, $password)){
			if(isset($_SESSION['passwordAttempts'])){
				if($_SESSION['passwordAttempts'] > 2) {
					$errors['password'] = "Password or Email is wrong";
				} else {
					$_SESSION['passwordAttempts'] = $_SESSION['passwordAttempts'] + 1;
					$errors['password'] = "Incorred Password";
				}
			} else {
				$errors['password'] = "Incorrect password.";
				$_SESSION['passwordAttempts'] = 1;
			}
			$valid = 0;
		}
	}

	if($valid){
		$Title = $dao->getUserRole($email);
		$_SESSION['user'] = $Title[0];
		$_SESSION['name'] = substr($email, 0, strlen($email) - 17);
		clearErrors();
		$previousPage = $_SESSION['previousPage'];
		unset($_SESSION['previousPage']);
		/*How do I add the GETs?
		if($previousPage === "BamMajor.php"){
			
		} else if($previousPage === "BamMajor.php"){
			
		} else if($previousPage === "BamMajor.php"){
			
		} else if($previousPage === "BamMajor.php"){
			
		} else if($previousPage === "BamMajor.php"){
			
		}
		header('Location: '.$previousPage);
		*/
		header('Location: Home.php');
	} else {
		$_SESSION['errors'] = $errors;
		$_SESSION['presets'] = array('email' => $email);
		header('Location: Login.php');
	}
?>