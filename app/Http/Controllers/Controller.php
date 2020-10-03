<?php

namespace App\Http\Controllers;

use App\Album;
use App\Category;
use App\Video;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public static function albums()
    {
        return $albums = Album::where('status', 1)
            ->orderBy('id', 'desc')
            ->take(2)
            ->get();
    }

    public static function videos()
    {
        return $videos = Video::where('status', 1)
            ->orderBy('id', 'desc')
            ->take(2)
            ->get();
    }

}
