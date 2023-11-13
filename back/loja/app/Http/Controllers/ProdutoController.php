<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Produtos;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;

class ProdutoController extends Controller
{
    public function form()
    {
        return view('cadastrar_produtos');
    }

    public function front()
    {
        return view('front_products');
    }

    public function create(Request $request)
    {
        try {
            $produtos = new Produtos($request->all());

            $id = DB::select("SELECT GERAR_ID.nextval FROM DUAL")[0]->nextval;
            

            $produtos = new Produtos($request->all());
            $produtos->id = $id;
    
            $produtos->imagem = '';
    
            if ($produtos->save() === true) {
                return response()->json($produtos, 201);
            }
            return response()->json(["error" => "Erro ao cadastrar"], 400);
        } catch (\Exception $e) {
            return response()->json(["error" => $e->getMessage()], 500);
        }
    }

    public function getprodutos(int $id)
    {
        $produtos = Produtos::find($id);
        return response()->json($produtos);
    }

    public function getAll(Request $request)
    {

        $busca = $request->input('search');
        $order = $request->input('order');

        if ($busca) {
            $produtos = Produtos::where('nome', 'like', "%$busca%")
                               ->orWhere('descricao', 'like', "%$busca%")
                               ->orWhere('categoria', 'like', "%$busca%")
                               ->orWhere('valor', 'like', "%$busca%")                       
                               ;
        } else {
            // faz o mesmo que Product::all() -> porém não traz ainda os resultados
            $produtos = Produtos::where(1, '=', 1);
        }    

        if ($order) {
            // valor: {campo}:{ordenacao}
            // orderValues[0] = {campo}
            // orderValues[1] = {ordenacao}
            // desestruturação usando list()
            [$campo, $ordenacao] = explode(':', $order);
            $produtos->orderBy($campo, $ordenacao);
        }

        return response()->json($produtos->get());


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

    public function update(int $id, Request $request)
    {
        // Conceito do PUT em Rest, é subistituir
        $produtos = Produtos::findOrFail($id);

        return DB::transaction(function () use ($produtos, $request) {
            $produtos->update($request->all());

            // Certifique-se de salvar as mudanças na imagem se houver uma nova
            if ($request->hasFile('imagem')) {
                $this->uploadImagem($request, $produtos->id);
            }

            if ($produtos->save()) {
                return response()->json($produtos, 202);
            }
            return response('Erro ao atualizar', 400);
        });

        // Estamos preenchendo o que veio da request
        // no Produtosos que selecionamos pelo id
        $produtos->fill($request->all());

        if ($produtos->save()) {
            return response()->json($produtos, 202);
        }
        return response('Erro ao atualizar', 400);
    }

    public function delete(int $id)
    {
        $produtos = Produtos::findOrFail($id);
        if ($produtos->delete()) {
            return response()->json([
                'id' => $produtos->id,
                'mensagem' => 'Produto excluido com sucesso'
            ], 202);
        }
        return response('Erro ao excluir', 400);
    }

    public function uploadImagem(Request $request, int $id)
    {
        // Para encontrar a imagem, rodar:
        // php artisan storage:link

        $produtos = Produtos::findOrFail($id);

        // se há um arquivo no campo "imagem"
        if ($request->hasFile('imagem')) {
            // .png | .jpg | .jpeg 
            $extensao = $request->file('imagem')->extension();
            
            // storePubliclyAs armazena o arquivo temporario na pasta informada
            // na área pública: pasta "public" do projeto
            $nomeArquivo = uniqid();
            $path = $request->file('imagem')->storePubliclyAs('public/produtos', "$nomeArquivo." . $extensao);
            
            // $produtos->imagem = Storage::url($path);
            // $produtos->save();

            // para responder com um link
            return response()->json([
                'url' => Storage::url($path)
            ]);
        }

        return response('Erro ao salvar a imagem', 400);
    }

}