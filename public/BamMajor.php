<?php
	require_once("Dao.php");
	require_once("BamSessionHelper.php");
	session_start();
  
	$_SESSION['currentPage'] = "BamMajor.php";
	$_SESSION['table'] = $_GET['Major'];
	$_SESSION['level'] = 3;
	
	$dao = new Dao();
	$result = $dao->getAbbr($_SESSION['table']);
	$_SESSION['abbr'] = $result[0];
	
	require_once('BamHeader.php');
	require_once('BamForumNavBar.php');
?>	
		<section class="Topics">
			<ul>
				<li><a href="BamMajorThreadList.php?Major=<?php echo $_SESSION['table'] ?>&List=100s">100s</a></li>
				<li><a href="BamMajorThreadList.php?Major=<?php echo $_SESSION['table'] ?>&List=200s">200s</a></li>
				<li><a href="BamMajorThreadList.php?Major=<?php echo $_SESSION['table'] ?>&List=300s">300s</a></li>
				<li><a href="BamMajorThreadList.php?Major=<?php echo $_SESSION['table'] ?>&List=400s">400s</a></li>
				<li><a href="BamMajorThreadList.php?Major=<?php echo $_SESSION['table'] ?>&List=Project Ideas">Project Ideas</a></li>
				<li><a href="BamMajorThreadList.php?Major=<?php echo $_SESSION['table'] ?>&List=Other">Other</a></li>
			</ul>
		</section>
<?php
    require_once('BamFooter.php');
?>