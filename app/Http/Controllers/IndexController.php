<?php

namespace App\Http\Controllers;

use App\Album;
use App\News;
use App\Partner;
use App\Slide;
use Artesaos\SEOTools\Facades\JsonLd;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\TwitterCard;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function index()
    {
        SEOMeta::setTitle('AFAA');
        SEOMeta::setDescription('The main idea of this mega event is to motivate and Inspire who are involved as designers, models, and fashion photographers and Apparel Industry development in Sri Lankan Asia we can’t see an awarding ceremony like this and after this awarding ceremony, we think it will be a great place to give their hard work to be awarded.');

        OpenGraph::setDescription('The main idea of this mega event is to motivate and Inspire who are involved as designers, models, and fashion photographers and Apparel Industry development in Sri Lankan Asia we can’t see an awarding ceremony like this and after this awarding ceremony, we think it will be a great place to give their hard work to be awarded.');
        OpenGraph::setTitle('AFAA');
        OpenGraph::setUrl('http://afaa.lk');

        TwitterCard::setTitle('AFAA');
        TwitterCard::setSite('@AFAA_official');

        JsonLd::setTitle('AFAA');
        JsonLd::setDescription('The main idea of this mega event is to motivate and Inspire who are involved as designers, models, and fashion photographers and Apparel Industry development in Sri Lankan Asia we can’t see an awarding ceremony like this and after this awarding ceremony, we think it will be a great place to give their hard work to be awarded.');

        return view('index', [
            'partners' => $this->getPartners(),
            'news' => $this->getNews(),
        ]);
    }

    public function getPartners()
    {
        return Partner::where('status', 1)
            ->orderBy('id', 'asc')
            ->get();
    }

    public function getNews()
    {
        return News::where('status', 1)
            ->orderBy('id', 'desc')
            ->take(4)
            ->get();
    }
}
