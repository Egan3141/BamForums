<?php
	require_once("SessionHelper.php");
	session_start();
  
	$_SESSION['currentPage'] = "Activity.php";
	$_SESSION['table'] = $_GET['Activity'];
	$_SESSION['level'] = 2;
	require_once('Header.php');
	require_once('ForumNavBar.php');
?>
		<section class="Topics">
			<ul>
				<li><a href="ActivityThreadList.php?Activity=<?php echo $_SESSION['table'] ?>&List=Locations">Locations</a></li>
				<li><a href="ActivityThreadList.php?Activity=<?php echo $_SESSION['table'] ?>&List=Techniques">Techniques</a></li>
				<li><a href="ActivityThreadList.php?Activity=<?php echo $_SESSION['table'] ?>&List=Meet Ups">Meet Ups</a></li>
				<li><a href="ActivityThreadList.php?Activity=<?php echo $_SESSION['table'] ?>&List=General">General Discussion</a></li>
			</ul>
		</section>
	
<?php
    require_once('BamFooter.php');
?>