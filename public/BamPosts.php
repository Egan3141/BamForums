<?php
	require_once("BamSessionHelper.php");
	require_once("Dao.php");
	session_start();
	$dao = new Dao();
  
	
	$_SESSION['currentPage'] = "BamPosts.php";
	if(isset($_GET['Thread'])){
		$_SESSION['thread'] = $_GET['Thread'];
	}
	if(isset($_GET['Type'])){
		$_SESSION['type'] = $_GET['Type'];
	}
	$_SESSION['level'] = 5;
	require_once('BamHeader.php');
	require_once('BamForumNavBar.php');
	
	?>
		<section class = "Title">
			<p id = "MiniTitle">
				<?php echo $_SESSION['thread'] ?>
			</p>
		</section>
	<?php
		
	if($_SESSION['type'] === "Main")
	{	
		$result = $dao->getMainPosts($_SESSION['thread']);
		foreach($result as $row) {
			$_SESSION['poster'] = $row['poster'];
			$_SESSION['postDate'] = $row['postDate'];
			$_SESSION['postContent'] = $row['postContent'];
?>
		<section class = "Posts collapsible">
			<section class = "PostHeader">
				<p>
					by <?php echo $_SESSION['poster'] ?>
					on <?php echo $_SESSION['postDate'] ?>
				</p>
			</section>
			<section class = "PostContent">
					<p>
					<?php echo $_SESSION['postContent'] ?>
					</p>
			</section>
		</section>
	<?php
		}
	} else if($_SESSION['type'] === "Normal")
	{
		$result = $dao->getPosts($_SESSION['abbr'], $_SESSION['thread']);
		foreach($result as $row) {
			$_SESSION['poster'] = $row['poster'];
			$_SESSION['postDate'] = $row['postDate'];
			$_SESSION['postContent'] = $row['postContent'];
	?>
		<section class = "Posts collapsible">
			<section class = "PostHeader">
				<p>
					by <?php echo $_SESSION['poster'] ?>
					on <?php echo $_SESSION['postDate'] ?>
				</p>
			</section>
			<section class = "PostContent">
					<p>
					<?php echo $_SESSION['postContent'] ?>
					</p>
			</section>
		</section>
		<?php
		}
	}
	
	if($_SESSION['user'] !== "Guest"){
	?>
		<section class="NewPost">
			<form method="POST" action="BamPostHandler.php" autocomplete="off">
				Post: <input type="text" name="Post">
				<br>
				TL;DR: <input type="text" name="TLDR">
				<br><br>
				<input type="submit" value="Submit">
			</form>
		</section>
<?php
	}
    require_once('BamFooter.php');
?>







