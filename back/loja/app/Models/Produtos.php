<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

// procura por uma tabela chamada: products
class Produtos extends Model
{
    // quando o nome da tabela é diferente
    // configuração de nome de tabela
    // protected $table = 'tbl_products';

    public $timestamps = false;

    use HasFactory;

    // São os campos da tabela
    // que podem ser armazenados diretamente
    // no (construtor) model
    protected $fillable = [
        'id',
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
        'id' => 'int',
    ];

    protected $appends = ['link'];

    protected function link(): Attribute
    {
        return new Attribute(
            get: fn () => url('api/storage/'.$this->id),
        );
    }

    public function update(array $attributes = [], array $options = [])
    {
        // Atualize o campo 'updated_at' manualmente
        $attributes['updated_at'] = $this->freshTimestamp();
        return parent::update($attributes, $options);
    }

}