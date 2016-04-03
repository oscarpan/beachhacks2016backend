<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

use Illuminate\Http\Request;

Route::get('/', function () {
    return view('welcome');
});

Route::group(['prefix' => 'api', 'middleware' => 'cors'], function () {

    Route::get('gameinfo', function(){
        $levels = \App\Level::all();
        $facts = \App\Fact::all();
        $scores = \App\Score::all();
        $images = \App\Image::all();

        $data = [
            'levels' => $levels->toArray(),
            'facts' => $facts->toArray(),
            'scores' => $scores->toArray(),
            'images' => $images->toArray()
         ];

        return response()->json($data);
    });

    Route::post('submitfact', function(Request $request){
        \App\Submission::create($request->all());
        return response()->json($request->all());
    });

    Route::post('submitscore', function(Request $request){
        \App\Score::create($request->all());
        return response()->json(\App\Score::where('level_id', '=', $request->get('level_id'))->get()->sortByDesc('score')->take(5)->toArray());
    });
});