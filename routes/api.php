<?php

use App\Http\Controllers\MovieController;
use Illuminate\Support\Facades\Route;

//Con esta sola ruta ya tenemos todos los metodos necesario para consultar y añadir registros a la base de datos
// verificarlo con  el comando: php artisan route:list
Route::apiResource('movies', MovieController::class);
