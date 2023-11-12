import 'dart:developer';
import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:hackadev/pages/DetalhesProduto.dart';


class Produto {
  String? nome;
  double? valor;
  String? categoria;
  int? parcelas;
  String? descricao;
  String? detalhes;
  String? imagem;

  Produto({
    this.nome,
    this.valor,
    this.categoria,
    this.parcelas,
    this.descricao,
    this.detalhes,
    this.imagem,
  });

  factory Produto.fromJson(Map<String, dynamic> json) {
    return Produto(
      nome: json['nome'],
      valor: json['valor'],
      categoria: json['categoria'],
      parcelas: json['parcelas'],
      descricao: json['descricao'],
      detalhes: json['detalhes'],
      imagem: json['imagem'],
    );
  }

  Produto copyWith({
    String? nome,
    double? valor,
    String? categoria,
    int? parcelas,
    String? descricao,
    String? detalhes,
    String? imagem,
  }) {
    return Produto(
      nome: nome ?? this.nome,
      valor: valor ?? this.valor,
      categoria: categoria ?? this.categoria,
      parcelas: parcelas ?? this.parcelas,
      descricao: descricao ?? this.descricao,
      detalhes: detalhes ?? this.detalhes,
      imagem: imagem ?? this.imagem,
    );
  }

  // @override
  // String toString() {
  //   // TODO: implement toString
  //   return "Produto("+nome+")";
  // }
}

class CadastroProdutos extends StatefulWidget {
  const CadastroProdutos({Key? key}) : super(key: key);

  @override
  _CadastroProdutosState createState() => _CadastroProdutosState();
}

class _CadastroProdutosState extends State<CadastroProdutos> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController valorController = TextEditingController();
  final TextEditingController categoriaController = TextEditingController();
  final TextEditingController parcelasController = TextEditingController();
  final TextEditingController descricaoController = TextEditingController();
  final TextEditingController detalhesController = TextEditingController();

  XFile? imagemSelecionada;

  Produto produto = Produto();

  Future<List<Produto>> listarProdutos() async {
    final response = await http.get(Uri.parse('http://localhost:8000/api/produtos'));
    if (response.statusCode == 200) {
      final List<dynamic> responseData = json.decode(response.body);
      return responseData.map((json) => Produto.fromJson(json)).toList();
    } else {
      throw Exception('Falha ao carregar os produtos');
    }
  }

  Future<void> cadastrarProduto(Produto produto) async {
    try {
      final bytes = imagemSelecionada != null ? await imagemSelecionada!.readAsBytes() : null;
      final String imagemBase64 = bytes != null ? base64Encode(bytes) : '';

      final response = await http.post(
        Uri.parse('http://localhost:8000/api/produtos'),
        headers: <String, String>{'Content-type': 'application/json'},
        body: jsonEncode({
          'nome': produto.nome,
          'valor': produto.valor,
          'categoria': produto.categoria,
          'quantidadeMaxParcelas': produto.parcelas,
          'descricao': produto.descricao,
          'detalhes': produto.detalhes,
          'imagem': imagemBase64,
        }),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body);
        final String imagem = responseData['imagem'];

        // Atualize o produto com o caminho da imagem
        produto = produto.copyWith(imagem: imagem);
      } else {
        print('Falha ao cadastrar o produto. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Erro ao tentar cadastrar o produto: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Produtos'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              setState(() {});
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: nomeController,
                    decoration: const InputDecoration(
                      labelText: 'Nome do Produto',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (valor) {
                      setState(() {
                        produto.nome = valor;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: valorController,
                    decoration: const InputDecoration(
                      labelText: 'Valor',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (valor) {
                      setState(() {
                        produto.valor = double.tryParse(valor);
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownButton<String>(
                    hint: const Text('Selecione uma categoria'),
                    value: produto.categoria,
                    items: <String>[
                      'Todos',
                      'Tvs',
                      'Smartphones',
                      'Eletroportáteis',
                      'Testes'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(fontSize: 20),
                        ),
                      );
                    }).toList(),
                    onChanged: (valor) {
                      setState(() {
                        produto.categoria = valor;
                      });
                    },
                  ),
                  TextField(
                    controller: parcelasController,
                    decoration: const InputDecoration(
                      labelText: 'Quantidade máxima de parcelas',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (valor) {
                      setState(() {
                        produto.parcelas = int.tryParse(valor);
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: descricaoController,
                    decoration: const InputDecoration(
                      labelText: 'Descrição longa',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (valor) {
                      setState(() {
                        produto.descricao = valor;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: detalhesController,
                    decoration: const InputDecoration(
                      labelText: 'Detalhes técnicos',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (valor) {
                      setState(() {
                        produto.detalhes = valor;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // ElevatedButton(
                  //   onPressed: () async {
                  //     final XFile? imagemSelecionada = await ImagePicker().pickImage(source: ImageSource.gallery);
                  //     setState(() {
                  //       this.imagemSelecionada = imagemSelecionada;
                  //     });
                  //   },
                  //   child: const Text("Selecionar Imagem"),
                  // ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      cadastrarProduto(produto);
                    },
                    child: const Text("Cadastrar"),
                  ),
                ],
              ),
            ),
            Expanded(
              child: FutureBuilder<List<Produto>>(
                future: listarProdutos(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return  Text('${snapshot.error?.toString()}');
                  } else {
                    final List<Produto>? products = snapshot.data;
                    if (products == null || products.isEmpty) {
                      return const Text('Nenhum produto cadastrado.');
                    } else {
                      return ListView.builder(
                        itemCount: products.length,
                        itemBuilder: (context, index) {
                          final product = products[index];
                          return ListTile(
                            title: Text(product.nome ?? ''),
                            subtitle: Text(product.categoria ?? ''),
                            // leading: product.imagem != null
                            //     ? Image.network(
                            //         'http://localhost:8000/api/${product.imagem}',
                            //         width: 50,
                            //         height: 50,
                            //       )
                            //     : const SizedBox.shrink(),
                            onTap: () {
                              // print(product.toJS);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetalhesProduto(productData: product),
                                ),
                              );
                            },
                          );
                        },
                      );
                    }
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
