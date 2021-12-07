<?php 

namespace App\Model;
Use PDO;
use App\Config\Connection;
/*
* Classe Responsavel por excluir usuário cadastrado
* Excluir usuário via ID 
* Passar ID via get api/delete/{id}
*/
class DeleteUser {

	public function deletar($id) {

		$conn = new Connection();
		$pdo = $conn->connect();

		$sql = $pdo->prepare("DELETE FROM users WHERE id = :id");
		$sql->bindValue(":id", $id);
		$sql->execute();

		if ($sql->rowCount() > 0) {
			return json_encode(['Sucess' => 'User deleted successfully']);
		}else {
			return json_encode(['error' => 'Error deleting user']);
		}
	}
}
