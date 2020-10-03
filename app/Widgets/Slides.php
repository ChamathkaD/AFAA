<?php

namespace App\Widgets;

use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Widgets\BaseDimmer;

class Slides extends BaseDimmer
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = \App\Slide::count();
        $string = trans_choice('Slide', $count);

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-play',
            'title'  => "{$count} {$string}",
            'text'   => __('You have ' . $count . ' ' . $string .' in your database. Click on button below to view all ' . $string . '.'),
            'button' => [
                'text' => __('View all ' . $string),
                'link' => route('voyager.slides.index'),
            ],
            'image' => asset('img/bg/bg-slide.jpg'),
        ]));
    }

    /**
     * Determine if the widget should be displayed.
     *
     * @return bool
     */
    public function shouldBeDisplayed()
    {
        return Auth::user()->can('browse', Voyager::model('User'));
    }
}
