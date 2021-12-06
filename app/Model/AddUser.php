<?php 

namespace App\Model;
Use PDO;
use App\Config\Connection;
/*
* Classe Responsavel por cadastrar novos usuarios
* Parametros via POST -> nome, email, telefone, data
*
*/
class AddUser {

	public function novoUsuario() {
		
		if (isset($_POST['nome']) && !empty($_POST['nome']) && isset($_POST['email']) && !empty($_POST['email']) && isset($_POST['telefone']) && !empty($_POST['telefone']) && isset($_POST['data']) && !empty($_POST['data'])) {

			$nome = filter_var($_POST['nome'], FILTER_DEFAULT);
			$email = filter_var($_POST['email'], FILTER_DEFAULT);
			$telefone = filter_var($_POST['telefone'], FILTER_DEFAULT);
			$data = filter_var($_POST['data'], FILTER_DEFAULT);

			if($this->addQuery($nome, $email, $telefone, $data)) {
				return json_encode(['Sucess' => 'successfully registered user']);
			}else {
				return json_encode(['Error' => 'error registering user']);
			}

		}else {
			$json = ['Error' => 'invalid shipping parameters'];	
			return json_encode($json);
		}
	}

	private function addQuery($nome, $email, $telefone, $data) {

		$conn = new Connection();
		$pdo = $conn->connect();

		$sql = $pdo->prepare("INSERT INTO users (name, email, phone, date) VALUES (:nome , :email, :telefone, :data)");
		$sql->bindValue(":nome", $nome);
		$sql->bindValue(":email", $email);
		$sql->bindValue(":telefone", $telefone);
		$sql->bindValue(":data", $data);
		$sql->execute();

		if ($sql->rowCount() > 0) {
			return true;
		}else {
			return false;
		}
	}
}
