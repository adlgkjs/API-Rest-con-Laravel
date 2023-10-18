<?php

namespace App\Http\Controllers;

use App\Models\Movie;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class MovieController extends Controller
{    
    //Metodo para mostrar todos los registros
    public function index()
    {
        return Movie::all(); //Con esto muestro todos los registros de la tabla movies
    }
    
    // Metodo para gregar un registro
    public function store(Request $request)
    {
        $movie = new Movie;
        $movie->title = $request->title; //Lo que reciba por titulo en el reques lo agregare al campu titulo
        $movie->synopsis = $request->synopsis;
        $movie->year = $request->year;
        $movie->cover = $request->cover;
        $movie->save();

        return $movie;
    }

    //Metodo para mostrar un registro mediante su id
    public function show(Movie $movie)
    {
        return $movie; //Solo con esta linea dentro de esta funcion nos puede mostrar un registro mediante su id
    }
    
    //Metodo para actualizar un registro
    public function update(Request $request, Movie $movie)
    {
        $movie->title = $request->title; //Lo que reciba por titulo en el request lo agregare al campu titulo
        $movie->synopsis = $request->synopsis;
        $movie->year = $request->year;
        $movie->cover = $request->cover;
        $movie->update();

        return $movie;
    }

    //Metodo para eliminar un registro
    public function destroy(Movie $movie)
    {
        $movie->delete();
        return 'Registro borrado exitosamente';
    }
}
