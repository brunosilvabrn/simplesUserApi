<?php

namespace App\Controller;
use App\Model\Users;
use App\Model\AddUser;
use App\Model\DeleteUser;
use App\Model\UpdateUser;
/*
* Controlador rota de usuarios
* Base url api => api/{parametros}
*/
class ModelsController {

	public function controllerModel($url) {
		// Controlador url usuários -> users
		if ($url[1] == "users" && !isset($url[2])) {

			$model = new Users();
			echo $model->getUsers();
		// Controlador url usuário -> user
		}elseif ($url[1] == "user" && isset($url[2]) && !isset($url[3])) {

			if (is_numeric($url[2])) {

				$model = new Users();
				echo $model->userId($url[2]);

			}else {
				echo json_encode(["Error" => "Id invalid"]);
			}	
		// Controlador url novo usuários -> new/user
		}elseif($url[1] == "new" && $url[2] == "user" && !isset($url[3])) {

			$model = new AddUser;
			echo $model->novoUsuario();
		// Controlador url editar usuário -> edit/id
		}elseif ($url[1] == "edit" && isset($url[2]) && !isset($url[3])) {

			if (is_numeric($url[2])) {
				
				$model = new UpdateUser();
				echo $model->editar($url[2]);

			}else {
				echo json_encode(["Error" => "Id invalid"]);
			}	
		// Controlador url excluir usuários -> delete
		}elseif ($url[1] == "delete" && isset($url[2]) && !isset($url[3])) {

			if (is_numeric($url[2])) {

				$model = new DeleteUser();
				echo $model->deletar($url[2]);

			}else {
				echo json_encode(["Error" => "Id invalid"]);
			}	
		// Retorna erro url invalida
		}else {
			echo json_encode(["Error" => "Invalid url parameter"]);

		}
	}	
}