<?php
	require_once("BamSessionHelper.php");
	require_once("Dao.php");
	session_start();
  
	$_SESSION['currentPage'] = "BamMajorList.php";
	$_SESSION['category'] = "Major";
	$_SESSION['level'] = 2;
	require_once('BamHeader.php');
	require_once('BamForumNavBar.php');
	
	$dao = new Dao();
	$result = $dao->getCategories("Major");
?>
		<section class="Topics">
			<ul>
				<?php foreach($result as $row) { ?>
				<li><a href="BamMajor.php?Major=<? echo $row['name'] ?>"><? echo $row['name'] ?></a></li>
				<?php } ?>
			</ul>
		</section>

<?php
    require_once('BamFooter.php');
?>