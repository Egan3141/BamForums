<?php
	session_start();
	require_once("SessionHelper.php");
	logoutUser();
	header('Location: Home.php');
?>