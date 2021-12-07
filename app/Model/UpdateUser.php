<?php 

namespace App\Model;
Use PDO;
use App\Config\Connection;
/*
* Classe Responsavel por editar dados usuario cadastrado
* Parametros via POST -> nome, email, telefone, data
*
*/
class UpdateUser {

	public function editar($id) {
		
		if (isset($_POST['nome']) && !empty($_POST['nome']) || isset($_POST['email']) && !empty($_POST['email']) || isset($_POST['telefone']) && !empty($_POST['telefone']) || isset($_POST['data']) && !empty($_POST['data'])) {

			$nome = filter_var($_POST['nome'], FILTER_DEFAULT);
			$email = filter_var($_POST['email'], FILTER_DEFAULT);
			$telefone = filter_var($_POST['telefone'], FILTER_DEFAULT);
			$data = filter_var($_POST['data'], FILTER_DEFAULT);

			$info = $this->selectDados($id);
			// Verificar se algum paramentro esta vazio (não vai ser atualizado)
			if ($nome == null) {
				$nome = $info['name'];
			}
			if ($email == null) {
				$email = $info['email'];
			}
			if ($telefone == null) {
				$telefone = $info['phone'];
			}
			if ($data == null) {
				$data = $info['date'];
			}

			$data = str_replace('-', '/', $data);
			
			if($this->updateQuery($id, $nome, $email, $telefone, $data)) {
				return json_encode(['Sucess' => 'User edited successfully']);
			}else {
				return json_encode(['Error' => 'Error editing user']);
			}

		}else {
			$json = ['Error' => 'invalid shipping parameters'];	
			return json_encode($json);
		}
	}

	private function updateQuery($id, $nome, $email, $telefone, $data) {

		$conn = new Connection();
		$pdo = $conn->connect();

		$sql = $pdo->prepare("UPDATE users SET name = :nome , email = :email, phone = :telefone, date =:data WHERE id = :id");
		$sql->bindValue(":id", $id);
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

	private function selectDados($id) {

		$conn = new Connection();
		$pdo = $conn->connect();

		$sql = $pdo->prepare("SELECT * FROM users WHERE id = :id");
		$sql->bindValue(":id", $id);
		$sql->execute();

		$dados = $sql->fetch(PDO::FETCH_ASSOC);

		return $dados;

	}
}
