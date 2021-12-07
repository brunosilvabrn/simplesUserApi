<?php 

namespace App\Controller;
use App\Controller\ModelsController;
/*
*  Controlador de rotas Principal da API
*/
class MainRouter {

	private $url = '';

	function __construct() {
		$router = (isset($_GET["url"])) ? $_GET["url"] : 'vazio';
		$this->url = $router;
	}

	public function app() {

		$rota = explode("/", $this->url);
		// Chama controlador Models da API => api/{paramentros}
		if ($rota[0] == "api") {
			if (isset($rota[1]) && !empty($rota[1])) {
				$controlador = new ModelsController;
				$controlador->controllerModel($rota);
			}
		}else {
			$resp = ["Error" => "Invalid url parameter"];
			echo json_encode($resp);
		}
	
	}
	
}