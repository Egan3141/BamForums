<?php
	require_once("BamSessionHelper.php");
	session_start();
  
	$_SESSION['currentPage'] = "BamCreateThread.php";
	$_SESSION['thread'] = "BamCreateThread";
	$_SESSION['level'] = 5;
	require_once('BamHeader.php');
	require_once('BamForumNavBar.php');
?>
    <section class = "Title">
	  <p id = "MiniTitle">
        Create Thread
      </p>
    </section>

    <section class="NewPost">
      <form method="POST" action="BamPostHandler.php" autocomplete="off">
	    Title: <input type="text" name="Thread">
		<br>
        Post: <input type="text" name="Post">
        <br>
        TL;DR: <input type="text" name="TLDR">
        <br><br>
        <input type="submit" value="Submit">
      </form>
    </section>
	
<?php
    require_once('BamFooter.php');
?>




