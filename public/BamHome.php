<?php
	require_once("BamSessionHelper.php");
	session_start();
  
	$_SESSION['currentPage'] = "BamHome.php";
	require_once('BamHeader.php');
?>
		<section id="HomePic">
			<a href="BamActivityList.php">
			<img src="images/BamActivities.jpg" width="40%" height="30%"></a> &ensp;
			<a href="BamMajorList.php">
			<img src="images/BamMajors.jpg" width="40%" height="30%"></a> &ensp;
		</section>
<?php
    require_once('BamFooter.php');
?>








