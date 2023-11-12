<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

// procura por uma tabela chamada: products
class Produtos extends Model
{
    // quando o nome da tabela é diferente
    // configuração de nome de tabela
    // protected $table = 'tbl_products';

    use HasFactory;

    // São os campos da tabela
    // que podem ser armazenados diretamente
    // no (construtor) model
    protected $fillable = [
        'nome', 
        'valor', 
        'categoria', 
        'parcelas',
        'descricao',
        'detalhes',
        'imagem'
    ];

    protected $casts = [
        'valor' => 'double',
        'parcelas' => 'int',
    ];
}