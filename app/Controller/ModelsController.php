<?php

namespace App\Controller;
use App\Model\Users;
use App\Model\AddUser;
/*
* Controlador rota de usuarios
*/
class ModelsController {

	public function controllerModel($url) {
		
		if ($url[1] == "users" && !isset($url[2])) {

			$model = new Users();
			echo $model->getUsers();

		}elseif ($url[1] == "user" && isset($url[2])) {

			if (is_numeric($url[2])) {

				$model = new Users();
				echo $model->userId($url[2]);

			}else {
				echo json_encode(["Error" => "Id invalid"]);
			}	

		}elseif($url[1] == "new" && $url[2] == "user" && !isset($url[3])) {

			$model = new AddUser;
			echo $model->novoUsuario();


		}else {
			echo json_encode(["Error" => "Invalid url parameter"]);

		}
	}	
}