<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Produtos;
use Illuminate\Support\Facades\Storage;

class ProdutoController extends Controller
{
    public function form()
    {
        return view('cadastra_Produtos');
    }

    public function create(Request $request)
    {
        $produtos = new Produtos($request->all());

        $produtos->imagem = '';

        // response json 
        // response()->json([], 201);

        if ($produtos->save() === true) {
            return response()->json($produtos, 201);
        }
        return response()->json(["error" => "Erro ao cadastrar"], 400);
    }

    public function getprodutos(int $codigo)
    {
        $produtos = Produtos::find($codigo);
        return response()->json($produtos);
    }

    public function getAll(Request $request)
    {
        // se tem: ?category=valor
        $categoria = $request->input('categoria');

        // se tem: ?name=valor
        $nome = $request->input('nome');

        if ($categoria) {
            $produtos = Produtos::where('categoria', $categoria)->get();
        } elseif ($nome) {
            $produtos = Produtos::where('nome', $nome)->get();
        } else {
            $produtos = Produtos::all();
        }

        return response()->json($produtos);
    }

    public function update(int $codigo, Request $request)
    {
        // Conceito do PUT em Rest, é subistituir
        $produtos = Produtos::findOrFail($codigo);

        // Estamos preenchendo o que veio da request
        // no Produtosos que selecionamos pelo codigo
        $produtos->fill($request->all());

        if ($produtos->save()) {
            return response()->json($produtos, 202);
        }
        return response('Erro ao atualizar', 400);
    }

    public function delete(int $codigo)
    {
        // faz a exclusão do Produtoso
    }

    public function uploadImagem(Request $request)
    {
        // Para encontrar a imagem, rodar:
        // php artisan storage:link

        // se há um arquivo no campo "imagem"
        if ($request->hasFile('imagem')) {
            // .png | .jpg | .jpeg 
            $extensao = $request->file('imagem')->extension();
            
            // storePubliclyAs armazena o arquivo temporario na pasta informada
            // na área pública: pasta "public" do projeto
            $nomeArquivo = uniqid();
            $path = $request->file('imagem')->storePubliclyAs('public/produtos', "$nomeArquivo." . $extensao);

            // respondemos com um link
            return response()->json([
                'url' => Storage::url($path)
            ]);
        }

        return response('Erro ao salvar a imagem', 400);
    }

}