<?php
	require_once("Dao.php");
	$dao = new Dao();
	echo $dao->getConnectionStatus();
	$result = $dao->getAbbr("Computer Science");
	echo "<br><p>Abbr:";
	echo $result[0];
	echo "</p>Threads:";
	$result = $dao->getMainThreads();
	foreach($result as $row) {
		echo $row['thread'];
	}
	echo "<br>Post: ";
	$result = $dao->getMainPosts("Rules for Posts");
	foreach($result as $row) {
		echo $row['poster'];
		echo $row['postDate'];
		echo $row['postContent'];
	}