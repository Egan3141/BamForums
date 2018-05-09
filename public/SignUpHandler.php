<?php
  session_start();
  require_once("Dao.php");
  $dao = new Dao();

  //Get and clean variables.
  $email = htmlspecialchars($_POST['email']);
  $username = substr($email, 0, strlen($email) - 17);
  $password = htmlspecialchars($_POST['password']);
  $passwordMatch = htmlspecialchars($_POST['passwordMatch']);
  $errors = array();

  //Initalize valid.
  $valid = 1;

  //Check the email for requirements.
	if(strpos($email, '@u.boisestate.edu') != (strlen($email) - 17)){
		$errors['email'] = "Must be a boisestate student email.";
		$valid = 0;
	} else if(strlen($email) > 75){
		$errors['email'] = "Too long, must be less than 76 characters.";
		$valid = 0;
	} else if($dao->checkEmail($email)){
		$errors['email'] = "This email already exists. Contact support if someone else is using your account.";
		$valid = 0;
	}

  //Check the password for requirements if still valid.
	if($valid){
		if(strlen($password) < 6){
			$errors['password'] = "Too short, must be more than 6 characters.";
			$valid = 0;
		} else if(strlen($password) > 75){
			$errors['password'] = "Too long, must be less than 76 characters.";
			$valid = 0;
		}
	}
  
  //Check if passwords match if still valid.
	if($valid){
		if($password != $passwordMatch){
			$errors['passwordMatch'] = "Your passwords did not match.";
			$valid = 0;
		}
	}

	//If no problems, send to Welcome page.
	if($valid){
		date_default_timezone_set('America/Boise');
		$date = date('Y-m-d H:i:s');
		$dao->addUser($email, $password, $username, $date);
		$_SESSION['email'] = $email;
		$_SESSION['password'] = $password;
		$_SESSION['name'] = $username;
		header('Location: Welcome.php');
	} else {
	//Else go back to SignUp with errors and presets.
		$_SESSION['errors'] = $errors;
		$_SESSION['presets']['email'] = $email;
		header('Location: SignUp.php');
	}
?>