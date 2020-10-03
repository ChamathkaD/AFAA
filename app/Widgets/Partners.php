<?php

namespace App\Widgets;

use App\Partner;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Widgets\BaseDimmer;

class Partners extends BaseDimmer
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
        $count = Partner::count();
        $string = trans_choice('Partners', $count);

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-magnet',
            'title'  => "{$count} {$string}",
            'text'   => __('You have ' . $count . ' ' . $string .' in your database. Click on button below to view all ' . $string . '.'),
            'button' => [
                'text' => __('View all ' . $string),
                'link' => route('voyager.partners.index'),
            ],
            'image' => asset('img/bg/bg-partner.jpg'),
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
