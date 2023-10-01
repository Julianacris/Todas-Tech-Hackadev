import 'package:flutter/material.dart';

// Importação do http
import 'package:http/http.dart' as http;

// Importação do convert
import 'dart:convert';

class CadastroProdutos extends StatefulWidget {
  const CadastroProdutos({super.key});

  @override
  State<StatefulWidget> createState() {
    return CadastroProdutosWidget();
  }
}

//Cadastrar um novo produto na API
Future<void> cadastrarProdutos(
    String nome,
    String categoria,
    double preco,
    int quantidadeEstrelas,
    int quantidadeMaxParcelas,
    double valorDaParcela,
    String descricaoLonga,
    String detalhesTecnicos) async {
  // Realizar requisição
  await http.post(Uri.parse('http://localhost:3000/produtos'),
      headers: <String, String>{'Content-type': 'application/json'},
      body: jsonEncode(<String, dynamic>{
        'nome': nome,
        'preco': preco,
        'categoria': categoria,
        'quantidadeEstrelas': quantidadeEstrelas,
        'quantidadeMsxParcelas': quantidadeMaxParcelas,
        'valorDaParcela': valorDaParcela,
        'descricaoLonga': descricaoLonga,
        'detalhesTecnicos': detalhesTecnicos
      }));
}

class CadastroProdutosWidget extends State<CadastroProdutos> {
  final TextEditingController controller = TextEditingController();

  //Variáveis
  int? id;
  String? nome;
  double? preco;
  String? categoria;
  int? quantidadeEstrelas;
  int? quantidadeMaxParcelas;
  double? valorDaParcela;
  String? descricaoLonga;
  String? detalhesTecnicos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Produtos'),
        // Adicionar o botão de voltar no AppBar
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navegar de volta para a página anterior
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            //Formulário de Cadastro
            SizedBox(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //nome do produto
                  TextField(
                    decoration: const InputDecoration(
                        labelText: 'Nome do Produto',
                        border: OutlineInputBorder()),
                    onChanged: (valor) {
                      setState(() {
                        nome = valor;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //preço
                  TextField(
                    decoration: const InputDecoration(
                        labelText: 'Preço', border: OutlineInputBorder()),
                    onChanged: (valor) {
                      setState(() {
                        preco = double.tryParse(valor);
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //categoria
                  TextField(
                    decoration: const InputDecoration(
                        labelText: 'Categoria', border: OutlineInputBorder()),
                    onChanged: (valor) {
                      setState(() {
                        categoria = valor;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //quantidade de estrelas
                  TextField(
                    decoration: const InputDecoration(
                        labelText: 'Quantidade de estrelas',
                        border: OutlineInputBorder()),
                    onChanged: (valor) {
                      setState(() {
                        quantidadeEstrelas = int.tryParse(valor);
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //Quantidade maxima de parcelas
                  TextField(
                    decoration: const InputDecoration(
                        labelText: 'Quantidade máxima de parcelas',
                        border: OutlineInputBorder()),
                    onChanged: (valor) {
                      setState(() {
                        quantidadeMaxParcelas = int.tryParse(valor);
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //valor da parcela
                  TextField(
                    decoration: const InputDecoration(
                        labelText: 'Valor da parcela',
                        border: OutlineInputBorder()),
                    onChanged: (valor) {
                      setState(() {
                        valorDaParcela = double.tryParse(valor);
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //descrição longa
                  TextField(
                    decoration: const InputDecoration(
                        labelText: 'Descrição longa',
                        border: OutlineInputBorder()),
                    onChanged: (valor) {
                      setState(() {
                        descricaoLonga = valor;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //detalhes técnicos
                  TextField(
                    decoration: const InputDecoration(
                        labelText: 'Detalhes técnicos',
                        border: OutlineInputBorder()),
                    onChanged: (valor) {
                      setState(() {
                        detalhesTecnicos = valor;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //Botão
                  ElevatedButton(
                    onPressed: () {
                      cadastrarProdutos(
                          nome!,
                          categoria!,
                          preco!,
                          quantidadeEstrelas!,
                          quantidadeMaxParcelas!,
                          valorDaParcela!,
                          descricaoLonga!,
                          detalhesTecnicos!);
                    },
                    child: const Text("Cadastrar"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
