<?php

namespace App\Http\Controllers;

use App\News;
use Artesaos\SEOTools\Facades\JsonLd;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOMeta;

class NewsController extends Controller
{
    public function index()
    {
        SEOMeta::setTitle('News');
        SEOMeta::setDescription('News is information about current events. Common topics for news reports include fashion design, costume design, jewellery design, footware modeling & etc.');

        OpenGraph::setDescription('News is information about current events. Common topics for news reports include fashion design, costume design, jewellery design, footware modeling & etc.');
        OpenGraph::setUrl('www.afaa.lk');

        TwitterCard::setTitle('News');
        TwitterCard::setSite('@AFAA_official');

        JsonLd::setTitle('News');
        JsonLd::setDescription('News is information about current events. Common topics for news reports include fashion design, costume design, jewellery design, footware modeling & etc.');

        return view('news.index', [
            'news' => $this->getNews()
        ]);
    }

    public function getNews()
    {
        return News::where('status', 1)
            ->orderBy('created_at', 'asc')
            ->paginate(4);
    }

    public function show($slug)
    {
        $item = News::where('slug', $slug)->first();
        SEOMeta::setTitle($item->title);
        return view('news.show', [
            'item' => $item,
            'news' => $this->getRecentNews()
        ]);
    }

    public function getRecentNews()
    {
        return News::where('status', 1)
            ->orderBy('id', 'desc')
            ->take(3)
            ->get();
    }

}
