<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\News;
use Faker\Generator as Faker;

$factory->define(News::class, function (Faker $faker) {
    return [
        'image' => public_path('img/post-1.jpg'),
        'title' => $faker->sentence($nbWords = 10, $variableNbWords = true),
        'slug' => $faker->slug,
        'subtitle' => $faker->sentence($nbWords = 3, $variableNbWords = true),
        'body' => $faker->realText($maxNbChars = 500, $indexSize = 2),
        'status' => 1
    ];
});
