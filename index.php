<?php

require __DIR__.'/config/connection.php';
require __DIR__.'/vendor/autoload.php';

use App\Controller\MainRouter;

$aplication = new MainRouter();
$aplication->app();
