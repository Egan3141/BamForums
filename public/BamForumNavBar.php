		<section class="NavBar">
			<ul>
				<li class="history">
					<a href="BamHome.php">Home</a>
					<?php if($_SESSION['level'] > 1){ ?>
					<strong>&lsaquo;<strong>
					<a href="Bam<?php echo $_SESSION['category'] ?>List.php"><?php echo $_SESSION['category'] ?>List</a>
					<?php if($_SESSION['level'] > 2) { ?>
					<strong>&lsaquo;<strong>
					<a href="Bam<?php echo $_SESSION['category'] ?>.php?<?php echo $_SESSION['category'] ?>=<?php echo $_SESSION['table'] ?>"><?php echo $_SESSION['table'] ?></a>
					<?php if($_SESSION['level'] > 3) { ?>
					<strong>&lsaquo;<strong>
					<a href="Bam<?php echo $_SESSION['category'] ?>ThreadList.php?<?php echo $_SESSION['category'] ?>=<?php echo $_SESSION['table'] ?>&List=<?php echo $_SESSION['subTopic'] ?>"><?php echo $_SESSION['subTopic'] ?></a>
					<?php if($_SESSION['level'] > 4) { ?>
					<strong>&lsaquo;<strong>
					<a href="<?php echo $_SESSION['thread'] ?>.php"><?php echo $_SESSION['thread'] ?></a>
					<?php }}}} ?>
				</li>
			</ul>
		</section>