<?php
	require_once("SessionHelper.php");
	//require_once("Dao.php");
	session_start();
  
	$_SESSION['currentPage'] = "Home.php";
	$_SESSION['level'] = 1;
	require_once('Header.php');
	//require_once('ForumNavBar.php');
	
	//$dao = new Dao();
	//$result = $dao->getList();
?>
		<section class="Topics">
			<ul>
				<li><a href="Activity.php?Activity=Archery">Archery</a></li>
				<li><a href="Activity.php?Activity=Baseball">Baseball</a></li>
				<li><a href="Activity.php?Activity=Soccer">Soccer</a></li>
				<li><a href="Activity.php?Activity=Yoga">Yoga</a></li>
			</ul>
		</section>

<?php
    require_once('Footer.php');
	
	/*<?php foreach($result as $row) { ?>
	<li><a href="Activity.php?Activity=<? echo $row['name'] ?>"><? echo $row['name'] ?></a></li>
	<?php } ?>
	*/
?>








