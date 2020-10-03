<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use App\Category;
use Illuminate\Support\Facades\Route;

Route::get('/', 'IndexController@index');
Route::get('/news', 'NewsController@index')->name('news');
Route::get('/news/{slug}', 'NewsController@show')->name('news.show');
Route::get('/albums', 'AlbumController@index')->name('albums');
Route::get('/albums/{id}', 'AlbumController@show')->name('albums.show');
Route::get('/videos', 'VideoController@index')->name('videos');
Route::post('/contact', 'ContactFormController@store')->name('contact.store');
// Static Views
Route::view('/apparel', 'categories.apparel')->name('apparel');
Route::view('/costume', 'categories.costume')->name('costume');
Route::view('/fashion', 'categories.fashion')->name('fashion');
Route::view('/fashion_choreography', 'categories.fashion_choreography')->name('fashion.choreography');
Route::view('/fashion_photo', 'categories.fashionphoto')->name('fashion.photo');
Route::view('/footware', 'categories.footware')->name('footware');
Route::view('/jewellery', 'categories.jewellery')->name('jewellery');
Route::view('/modeling', 'categories.modeling')->name('modeling');
Route::view('/textile', 'categories.textile')->name('textile');
Route::view('/special', 'categories.special')->name('special');
Route::view('/lifetime', 'categories.lifetime')->name('lifetime');

Route::view('/judges', 'judges')->name('judges');
Route::view('/ifi', 'ifi')->name('ifi');

// Registration Routes
Route::view('/registration', 'registration')->name('register');
// Applicant Registration Routes
Route::get('applicant/registration', 'ApplicantController@index')->name('applicant.register.index');
Route::post('applicant/registration/store', 'ApplicantController@store')->name('applicant.register.store');
// National Directors Registration Routes
Route::get('director/registration', 'DirectorController@index')->name('director.register.index');
Route::post('director/registration/store', 'DirectorController@store')->name('director.register.store');

/*$routes = Category::where('status', 1)->get();

foreach ($routes as $route) {
    Route::get($route->route.'/{id}', 'InstructionController@show')->name($route->route);
}*/

Route::view('about', 'about')->name('about');
Route::view('contact', 'contact')->name('contact');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
    Route::get('applicants', 'ApplicantController@getApplicants')->name('voyager.applicants.index');
    Route::get('applicants/{id}', 'ApplicantController@getApplicantsDetails')->name('voyager.applicants.show');
    Route::get('directors', 'DirectorController@getDirectors')->name('voyager.directors.index');
    Route::get('directors/{id}', 'DirectorController@getDirectorsDetails')->name('voyager.directors.show');
});
