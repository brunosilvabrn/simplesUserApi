<?php

namespace App\Controller;
use App\Model\Users;
/*
* Controlador rota de usuarios
*/
class ModelsController {

	public function controllerModel($url) {
		
		if ($url[1] == "users" && !isset($url[2])) {

			$model = new Users();
			echo $model->getUsers();

		}else if ($url[1] == "user" && isset($url[2])) {

			if (is_numeric($url[2])) {

				$model = new Users();
				echo $model->userId($url[2]);

			}else {
				echo json_encode(["Error" => "Id invalid"]);
			}		
		}else {
			echo json_encode(["Error" => "Invalid url parameter"]);
		}
	}	
}