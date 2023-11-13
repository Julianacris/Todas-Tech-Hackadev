<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Storage;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

use App\Http\Controllers\ProdutoController;

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/login', [LoginController::class, 'login']);

// localhost:8000/api/produtos
Route::post('/produtos', [ProdutoController::class, 'create']);

Route::get('/produtos/{codigo}', [ProdutoController::class, 'getProduct']);

Route::get('/produtos', [ProdutoController::class, 'getAll']);

Route::put('/produtos/{codigo}', [ProdutoController::class, 'update']);

Route::post('/produtos/imagem', [ProdutoController::class, 'uploadImagem']);

Route::delete('/products/{id}', [ProductController::class, 'delete']);

Route::get('/storage/{path}', function (string $path) {
    $storeUrl = 'public/products/';
    $imagem = Storage::get($storeUrl . $path);
    $mime = Storage::mimeType($storeUrl . $path);
    
    return response($imagem, 200)
            ->header('Content-Type', $mime);
});