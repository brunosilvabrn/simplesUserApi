<?php

namespace App\Config;
use PDO;
require 'config/db.php';

class Connection {

	public function connect(){

		try {

			$pdo = new PDO("mysql:dbname=".DBNAME."; host=".HOST, USER, PASSWORD);
			$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

			return $pdo;

		}catch(PDOException $e) {

			$status = "ERROR: ".$e->getMessage();
			$return = ['status' => 'Error connecting to database', 'message' => $status];
			echo json_encode($return);
			exit();

		}
	}
}