<?php
	require_once("BamSessionHelper.php");
	session_start();
  
	$_SESSION['currentPage'] = "BamActivity.php";
	$_SESSION['table'] = $_GET['Activity'];
	$_SESSION['level'] = 3;
	require_once('BamHeader.php');
	require_once('BamForumNavBar.php');
?>
		<section class="Topics">
			<ul>
				<li><a href="BamActivityThreadList.php?Activity=<?php echo $_SESSION['table'] ?>&List=Locations">Locations</a></li>
				<li><a href="BamActivityThreadList.php?Activity=<?php echo $_SESSION['table'] ?>&List=Techniques">Techniques</a></li>
				<li><a href="BamActivityThreadList.php?Activity=<?php echo $_SESSION['table'] ?>&List=Meet Ups">Meet Ups</a></li>
			</ul>
		</section>
	
<?php
    require_once('BamFooter.php');
?>