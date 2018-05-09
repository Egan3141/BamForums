<?php
	require_once("SessionHelper.php");
	require_once("Dao.php");
	session_start();
  
	$_SESSION['currentPage'] = "ActivityThreadList.php";
	$_SESSION['table'] = $_GET['Activity'];
	$_SESSION['subTopic'] = $_GET['List'];
	$_SESSION['level'] = 3;
	
	$dao = new Dao();
	$result = $dao->getAbbr($_SESSION['table']);
	$_SESSION['abbr'] = $result[0];
	
	require_once('Header.php');
	require_once('ForumNavBar.php');
	
	if($_SESSION['user'] !== "Guest"){
?>
		<section class = "CreateThread">
			<h4>
				<a href="BamCreateThread.php">Create Thread</a>
			</h4>
		</section>
<?php } ?>
	
		<section class = "Threads">
			<ul>
				<?php $result = $dao->getMainThreads();
					foreach($result as $row) {
						$thread = $row['thread'];
					?>
						<li>
							<a href="Posts.php?Thread=<?php echo $thread ?>&Type=Main"><?php echo $thread?></a>
						</li>	
				<?php }
					$result = $dao->getThreads($_SESSION['abbr'], $_SESSION['subTopic']);
					foreach($result as $row) {
						$thread = $row['thread'];
				?>
						<li>
							<a href="Posts.php?Thread=<?php echo $thread ?>&Type=Normal"><?php echo $thread?></a>
						</li>
				<?php }	?>
			</ul>
		</section>
<?php
    require_once('BamFooter.php');
?>