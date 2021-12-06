<?php

namespace App\Model;
use PDO;
use App\Config\Connection;

class Users {

	public function getUsers() {

		$conn = new Connection();
		$pdo = $conn->connect();
		
		$sql = $pdo->prepare("SELECT * FROM users");
		$sql->execute();
		$dados = $sql->fetchAll(PDO::FETCH_ASSOC);

		$json = [];

		foreach ($dados as $value) {
			$valor = ['id'=> $value['id'], 'nome' => $value["name"], 'email' => $value["email"],'telefone' => $value["phone"], 'data' => $value["date"]];
			array_push($json, $valor);
		}

		return json_encode($json);
	}

	public function userId($id) {
		
		$conn = new Connection();
		$pdo = $conn->connect();
		
		$sql = $pdo->prepare("SELECT * FROM users WHERE id = :id");
		$sql->bindValue(":id", $id);
		$sql->execute();
		$dados = $sql->fetch(PDO::FETCH_ASSOC);

		$json = [];

		if ($dados['id'] == null) {

			$json = ["Error" => "User not found"];

		}else {

			$valor = ['id'=> $dados['id'], 'nome' => $dados["name"], 'telefone' => $dados["phone"]];
			array_push($json, $valor);

		}
		

		return json_encode($json);
	}
}

