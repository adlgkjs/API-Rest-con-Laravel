<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Movie;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Movie>
 */
class MovieFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */

    protected $model = Movie::class;

    public function definition(): array
    {
        return [
            //Con este codigo agrego los datos de falsos
           "title" => $this->faker->sentence(), //sentence() es un metodo de la clase factory
           "synopsis" => $this->faker->paragraph(),
           "year"=> $this->faker->year(),
           "cover" => $this->faker->paragraph()
        ];
    }
}
