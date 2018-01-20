<?php
require_once("../database/config.php");
class Dao
{
	/**
	 * Creates and returns a PDO connection using the database connection
	 * url specified in the CLEARDB_DATABASE_URL environment variable.
	 */
	private function getConnection()
	{
		$url = parse_url(getenv("CLEARDB_DATABASE_URL"));

		$host = $url["host"];
		$db   = substr($url["path"], 1);
		$user = $url["user"];
		$pass = $url["pass"];

		$conn = new PDO("mysql:host=$host;dbname=$db;", $user, $pass);

		// Turn on exceptions for debugging. Comment this out for
		// production or make sure to use try-catch statements.
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

		return $conn; 
	}
	/**
	 * Returns the database connection status string.
	 */
	public function getConnectionStatus()
	{
		$conn = $this->getConnection();
		return $conn->getAttribute(constant("PDO::ATTR_CONNECTION_STATUS"));
	}
	
	/**
	 * Adds a new post to the AllThreads table.
	 */
	public function addMainPost($thread, $poster, $date, $content)
	{
		$conn = $this->getConnection();
		//Placeholder
		$query = "INSERT INTO AllThreads (thread, poster, postDate, postContent, postTLDR) VALUES (:thread, :poster, :date, :content, 'Not yet implemented')";
		//Statement
		$stmt = $conn->prepare($query);
		//Bind
		$stmt->bindParam(":thread", $thread);
		$stmt->bindParam(":poster", $poster);
		$stmt->bindParam(":date", $date);
		$stmt->bindParam(":content", $content);
		//Execute
		$stmt->execute();
	}
	
	/**
	 * Adds a new post to the table $table.
	 */
	public function addPost($table, $subTopic, $thread, $poster, $date, $content)
	{
		$conn = $this->getConnection();
		//Placeholder
		$query = "INSERT INTO $table (subTopic, thread, poster, postDate, postContent, postTLDR) VALUES (:subTopic, :thread, :poster, :date, :content, 'Not yet implemented')";
		//Statement
		$stmt = $conn->prepare($query);
		//Bind
		$stmt->bindParam(":subTopic", $subTopic);
		$stmt->bindParam(":thread", $thread);
		$stmt->bindParam(":poster", $poster);
		$stmt->bindParam(":date", $date);
		$stmt->bindParam(":content", $content);
		//Execute
		$stmt->execute();
	}
	
	/**
	 * Adds a new user to the database.
	 */
	public function addUser($email, $password, $name, $time)
	{
		$conn = $this->getConnection();
		//Placeholder
		$query = "INSERT INTO users (email, password, name, role, posts, locked, lockedTime, attempts, attemptTime, profilePic) VALUES (:email, :password, :name, 'Member', '0', '0', :time, '0', :time, 'https://i.imgur.com/KZ0kR1R.png')";
		//Statement
		$stmt = $conn->prepare($query);
		//Bind
		$stmt->bindParam(":email", $email);
		$stmt->bindParam(":password", $password);
		$stmt->bindParam(":name", $name);
		$stmt->bindParam(":time", $time);
		//Execute
		$stmt->execute();
	}
	
	/**
	* Checks if the email exists.
	*/
	public function checkEmail($email)
	{
		$conn = $this->getConnection();
		//Placeholder
		$query = "SELECT email FROM Users";
		//Statement
		$stmt = $conn->prepare($query);
		//Execute
		$stmt->execute();
		//Return
		$emails = $stmt->fetchall();
		//Taken from resources
		foreach ($emails as $emailCheck){
			// recreate email object
			//$email = unserialize($email);
			if ($email === $emailCheck['email']) {
				// user email found, return 1 (aka true)
				return 1;
			}
		}
		return 0;
	}
	
	/**
	* Checks if the password corresponds to the email/user.
	*/
	public function checkPassword($email, $password)
	{
		$conn = $this->getConnection();
		//Placeholder
		$query = "SELECT password FROM Users WHERE email = :email";
		//Statement
		$stmt = $conn->prepare($query);
		//Bind
		$stmt->bindParam(":email", $email);
		//Execute
		$stmt->execute();
		//Return
		$pass = $stmt->fetch();
		//Compare passwords
		if ($password == $pass['password']) {
			return 1;
		}
		return 0;
	}
	
	/**
	* Returns the abbreviation/table name for the provided topic.
	*/
	public function getAbbr($topic)
	{
		$conn = $this->getConnection();
		//Placeholder
		$query = "SELECT abbr FROM Topics WHERE name = :topic";
		//Statement
		$stmt = $conn->prepare($query);
		//Bind
		$stmt->bindParam(":topic", $topic);
		//Execute
		$stmt->execute();
		//Return
		return $stmt->fetch();
	}
	
	/**
	* Returns all items in that category.
	*/
	public function getCategories($category)
	{
		$conn = $this->getConnection();
		//Placeholder
		$query = "SELECT name FROM Topics WHERE category = :category";
		//Statement
		$stmt = $conn->prepare($query);
		//Bind
		$stmt->bindParam(":category", $category);
		//Execute
		$stmt->execute();
		//Return
		return $stmt->fetchAll();
	}
	
	/**
	* Returns the posts from the provided thread from the main threads table.
	*/
	public function getMainPosts($thread)
	{
		$conn = $this->getConnection();
		//Placeholder
		$query = "SELECT poster, postDate, postContent FROM AllThreads WHERE thread = :thread";
		//Statement
		$stmt = $conn->prepare($query);
		//Bind
		$stmt->bindParam(":thread", $thread);
		//Execute
		$stmt->execute();
		//Return
		return $stmt->fetchAll();
	}
	
	/**
	* Returns the main threads. The ones on all tables.
	*/
	public function getMainThreads()
	{
		$conn = $this->getConnection();
		//Placeholder
		$query = "SELECT DISTINCT thread FROM AllThreads";
		//Statement
		$stmt = $conn->prepare($query);
		//Execute
		$stmt->execute();
		//Return
		return $stmt->fetchAll();
	}
	
	/**
	* Returns the posts for this table/topic and subtopic.
	*/
	public function getPosts($table, $thread)
	{
		$conn = $this->getConnection();
		//Placeholder
		$query = "SELECT poster, postDate, postContent FROM $table WHERE thread = :thread";
		//Statement
		$stmt = $conn->prepare($query);
		//Bind
		$stmt->bindParam(":thread", $thread);
		//Execute
		$stmt->execute();
		//Return
		return $stmt->fetchAll();
	}
	
	/**
	* Returns the threads for this table and subtopic.
	*/
	public function getThreads($table, $subTopic)
	{
		$conn = $this->getConnection();
		//Placeholder
		$query = "SELECT DISTINCT thread FROM $table WHERE subTopic = :subTopic";
		//Statement
		$stmt = $conn->prepare($query);
		//Bind
		$stmt->bindParam(":subTopic", $subTopic);
		//Execute
		$stmt->execute();
		//Return
		return $stmt->fetchAll();
	}
	
	/**
	* Returns the title for the provided email/user.
	*/
	public function getUserRole($email)
	{
		$conn = $this->getConnection();
		//Placeholder
		$query = "SELECT role FROM Users WHERE email = :email";
		//Statement
		$stmt = $conn->prepare($query);
		//Bind
		$stmt->bindParam(":email", $email);
		//Execute
		$stmt->execute();
		//Return
		return $stmt->fetch();
	}
	
}