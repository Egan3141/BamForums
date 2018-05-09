<?php
	require_once("BamSessionHelper.php");
	require_once("Dao.php");
	session_start();
  
	$_SESSION['currentPage'] = "Home.php";
	$_SESSION['level'] = 1;
	require_once('BamHeader.php');
	require_once('BamForumNavBar.php');
	
	$dao = new Dao();
	$result = $dao->getList();
?>
		<section class="Topics">
			<ul>
				<?php foreach($result as $row) { ?>
				<li><a href="BamActivity.php?Activity=<? echo $row['name'] ?>"><? echo $row['name'] ?></a></li>
				<?php } ?>
			</ul>
		</section>

<?php
    require_once('BamFooter.php');
?>








