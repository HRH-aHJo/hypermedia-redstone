<?php
	$mysqli;
	function dbconnect() {
		if(isset($mysqli)) return;
		include("config.php");
		$mysqli = new mysqli($host,$username,$password, $db);
		if ($mysqli->connect_errno) {
		    printf("Connect failed: %s\n", $mysqli->connect_error);
		    exit();
		}
		return $mysqli;
	}

	function get_news() {
		$mysqli = dbconnect();
		if ($result = $mysqli->query("SELECT * FROM red_news ORDER BY publishdate DESC ")) {
			$rows = $result->fetch_all(MYSQLI_ASSOC);

		    $result->close();
		    return $rows;
		}
	}

	function get_trail_difficulties() {
		$mysqli = dbconnect();
		if ($result = $mysqli->query("SELECT * FROM red_trail_difficulty")) {
			$rows = $result->fetch_all(MYSQLI_ASSOC);

		    $result->close();
		    return $rows;
		}
	}

	function get_trail($id) {
		$mysqli = dbconnect();
		if ($result = $mysqli->query("SELECT * FROM red_trail WHERE id = " . $id)) {
			$row = $result->fetch_assoc();

		    $result->close();
		    return $row;
		}
	}

	function get_trails_by_difficulty($difficulty) {
		$mysqli = dbconnect();
		if ($result = $mysqli->query("SELECT * FROM red_trail WHERE difficulty = " . $difficulty)) {
			$rows = $result->fetch_all(MYSQLI_ASSOC);

		    $result->close();
		    return $rows;
		}
	}

	function get_territory_categories() {
		$mysqli = dbconnect();
		if ($result = $mysqli->query("SELECT * FROM red_territory_category")) {
			$rows = $result->fetch_all(MYSQLI_ASSOC);

		    $result->close();
		    return $rows;
		}
	}

	function get_territory($id) {
		$mysqli = dbconnect();
		if ($result = $mysqli->query("SELECT * FROM red_territory WHERE id = " . $id)) {
			$row = $result->fetch_assoc();

		    $result->close();
		    return $row;
		}
	}

	function get_territory_by_category($category) {
		$mysqli = dbconnect();
		if ($result = $mysqli->query("SELECT * FROM red_territory WHERE category = " . $category)) {
			$rows = $result->fetch_all(MYSQLI_ASSOC);

		    $result->close();
		    return $rows;
		}
	}

	function get_huts_hostels() {
		$mysqli = dbconnect();
		if ($result = $mysqli->query("SELECT * FROM red_hut_hostel")) {
			$rows = $result->fetch_all(MYSQLI_ASSOC);

		    $result->close();
		    return $rows;
		}
	}

	function get_huts_hostels_by_id($id) {
		$mysqli = dbconnect();
		if ($result = $mysqli->query("SELECT * FROM red_hut_hostel WHERE id = " . $id)) {
			$row = $result->fetch_assoc();

		    $result->close();
		    return $row;
		}
	}

	function get_huts_hostels_images_by_id($id) {
		$mysqli = dbconnect();
		if ($result = $mysqli->query("SELECT * FROM red_hut_hostel_images WHERE hut_hostel_id = " . $id)) {
			$rows = $result->fetch_all(MYSQLI_ASSOC);

		    $result->close();
		    return $rows;
		}
	}

	function get_page($name) {
		$mysqli = dbconnect();
		if ($result = $mysqli->query("SELECT title,body FROM red_page WHERE name = '" . $name ."'")) {
			$body = $result->fetch_assoc();
		    $result->close();
		    return $body;
		}
	}

	
	function get_all_territory_by_trail($id) {
		$mysqli = dbconnect();
		if ($result = $mysqli->query("SELECT * FROM red_trail_territory WHERE trail_id = " . $id)) {
			$rows = $result->fetch_all(MYSQLI_ASSOC);

		    $result->close();
		    return $rows;
		}
	}

	function get_all_hh_by_trail($id) {
		$mysqli = dbconnect();
		if ($result = $mysqli->query("SELECT * FROM red_trail_hut_hostel WHERE trail_id = " . $id)) {
			$rows = $result->fetch_all(MYSQLI_ASSOC);

		    $result->close();
		    return $rows;
		}
	}

	function get_all_trail_by_territory($id) {
		$mysqli = dbconnect();
		if ($result = $mysqli->query("SELECT * FROM red_trail_territory WHERE territory_id = " . $id)) {
			$rows = $result->fetch_all(MYSQLI_ASSOC);

		    $result->close();
		    return $rows;
		}
	}

	function get_all_trail_by_hh($id) {
		$mysqli = dbconnect();
		if ($result = $mysqli->query("SELECT * FROM red_trail_hut_hostel WHERE hut_hostel_id = " . $id)) {
			$rows = $result->fetch_all(MYSQLI_ASSOC);

		    $result->close();
		    return $rows;
		}
	}
	
?>