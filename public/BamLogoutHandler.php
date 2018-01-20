<?php
	session_start();
	require_once("BamSessionHelper.php");
	logoutUser();
	header('Location: BamHome.php');
?>