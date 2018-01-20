<?php
	session_start();
	require_once("Dao.php");
	$dao = new Dao();

    //Get variables
    $post = $_POST['Post'];
    $tldr = $_POST['TLDR'];
	if(isset($_POST['Thread'])){
		$_SESSION['thread'] = $_POST['Thread'];
	}
    $errors = array();

    //Initalize valid.
    $valid = 1;

    //Check if the post was empty
	if(strlen($post) == 0){
		$valid = 0;
	}
	
	//Add post
	if($valid){
		date_default_timezone_set('America/Boise');
		$date = date('Y-m-d H:i:s');
		if($_SESSION['type'] === "Main"){
			$dao->addMainPost($_SESSION['thread'], $_SESSION['name'], $date, $post);
		} else {
			$dao->addPost($_SESSION['abbr'], $_SESSION['subTopic'], $_SESSION['thread'], $_SESSION['name'], $date, $post);
		}
		$_SESSION['currentPage'];
		header("Location: BamHome.php");
	} else {
		$_SESSION['errors'] = $errors;
		header('Location: BamHome.php');
	}
?>