<?php
	require_once("BamSessionHelper.php");
	session_start();
  
	$_SESSION['currentPage'] = "CreateThread.php";
	$_SESSION['thread'] = "CreateThread";
	$_SESSION['level'] = 4;
	require_once('Header.php');
	require_once('ForumNavBar.php');
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
    require_once('Footer.php');
?>




