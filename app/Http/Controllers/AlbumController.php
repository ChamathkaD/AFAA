<?php

namespace App\Http\Controllers;

use App\Album;
use App\Image;
use Artesaos\SEOTools\Facades\JsonLd;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\TwitterCard;
use Illuminate\Http\Request;

class AlbumController extends Controller
{
    public function index()
    {
        SEOMeta::setTitle('Image Albums');
        SEOMeta::setDescription('An attractive photo gallery for your website is one of the strongest assets in building your online business. It turns your website into a dynamic platform that can attract visitors.');

        OpenGraph::setDescription('An attractive photo gallery for your website is one of the strongest assets in building your online business. It turns your website into a dynamic platform that can attract visitors.');
        OpenGraph::setUrl('www.afaa.lk');

        TwitterCard::setTitle('Image Albums');
        TwitterCard::setSite('@AFAA_official');

        JsonLd::setTitle('Image Albums');
        JsonLd::setDescription('An attractive photo gallery for your website is one of the strongest assets in building your online business. It turns your website into a dynamic platform that can attract visitors.');

        return view('albums.image.index', [
            'albums' => $this->getAlbums()
        ]);
    }

    public function getAlbums()
    {
        return Album::where('status', 1)
            ->orderBy('id', 'desc')
            ->get();
    }

    public function show($id)
    {
        $images = Image::where('album_id', $id)->with('Album')->firstOrFail();
        SEOMeta::setTitle($images->album->title);
        return view('albums.image.show', ['images' => $images]);
    }
}
