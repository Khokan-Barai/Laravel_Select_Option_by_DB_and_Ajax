<?php

use App\Http\Controllers\SelectOptionController;
use Illuminate\Support\Facades\Route;



Route::get('/', [SelectOptionController::class, 'index']);
Route::get('/districts', [SelectOptionController::class, 'districts'])->name('districts');
