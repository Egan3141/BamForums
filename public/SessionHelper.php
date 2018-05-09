<?php
//Check if logged in.
function checkLogin() {
	if (isset($_SESSION["user"])) {
		return $_SESSION["user"];
	} else {
		$_SESSION["user"] = "Guest";
		return $_SESSION["user"];
	}
}

//Remove session to log user out (becomes guest).
function logoutUser() {
	session_destroy();
	session_regenerate_id(true); # nuke old session
}

//Prints preset for given SESSION key (if one exists).
function preset($key) {
	if(isset($_SESSION['presets'][$key]) && !empty($_SESSION['presets'][$key])) {
		echo 'value="' . $_SESSION['presets'][$key] . '" ';
	}
}

//Prints error for given SESSION key (if one exists).
function displayError($key) {
	if(isset($_SESSION['errors'][$key])) { ?>
		<span id="<?= $key . "Error" ?>" class="error"><?= $_SESSION['errors'][$key] ?></span>
	<?php }
}

//Clears error data from session when we are done so they don't show
//up on refresh or if user submits correct info next time around.
function clearErrors() {
	unset($_SESSION['errors']);
	unset($_SESSION['presets']);
}
	
	
	
	
	
	
	
	
	
	