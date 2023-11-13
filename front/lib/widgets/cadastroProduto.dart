import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:hackadev/pages/DetalhesProduto.dart';

class Produto {
  int? id;
  String? nome;
  double? valor;
  String? categoria;
  int? parcelas;
  String? descricao;
  String? detalhes;
  String? imagem;

  Produto({
    this.id,
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
      id: json['id'],
      nome: json['nome'],
      valor: json['valor']?.toDouble(),
      categoria: json['categoria'],
      parcelas: json['parcelas'],
      descricao: json['descricao'],
      detalhes: json['detalhes'],
      imagem: json['imagem'],
    );
  }

  Produto copyWith({
    int? id,
    String? nome,
    double? valor,
    String? categoria,
    int? parcelas,
    String? descricao,
    String? detalhes,
    String? imagem,
  }) {
    return Produto(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      valor: valor ?? this.valor,
      categoria: categoria ?? this.categoria,
      parcelas: parcelas ?? this.parcelas,
      descricao: descricao ?? this.descricao,
      detalhes: detalhes ?? this.detalhes,
      imagem: imagem ?? this.imagem,
    );
  }
}

class CadastroProdutos extends StatefulWidget {
  const CadastroProdutos({Key? key}) : super(key: key);

  @override
  _CadastroProdutosState createState() => _CadastroProdutosState();
}

class _CadastroProdutosState extends State<CadastroProdutos> {
  final TextEditingController idController = TextEditingController();
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController valorController = TextEditingController();
  final TextEditingController categoriaController = TextEditingController();
  final TextEditingController parcelasController = TextEditingController();
  final TextEditingController descricaoController = TextEditingController();
  final TextEditingController detalhesController = TextEditingController();
  final TextEditingController imagemController = TextEditingController();

  Produto produto = Produto();
  XFile? imagemSelecionada;

  Future<List<Produto>> listarProdutos() async {
    try {
      final response = await http.get(Uri.parse('http://localhost:8000/api/produtos'));
      if (response.statusCode == 200) {
        final List<dynamic> responseData = json.decode(response.body);
        return responseData.map((json) => Produto.fromJson(json)).toList();
      } else {
        throw Exception('Falha ao carregar os produtos');
      }
    } catch (e) {
      print('Erro ao listar produtos: $e');
      return [];
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
          'parcelas': produto.parcelas,
          'descricao': produto.descricao,
          'detalhes': produto.detalhes,
          'imagem': imagemBase64,
        }),
      );

      if (response.statusCode == 201) {
        print('Produto cadastrado com sucesso!');
      } else {
        print('Falha ao cadastrar o produto. Status code: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    } catch (e) {
      print('Erro ao tentar cadastrar o produto: $e');
    }
  }

  Future<void> atualizarProduto(Produto produto) async {
    try {
      final response = await http.put(
        Uri.parse('http://localhost:8000/api/produtos/${produto.id}'),
        headers: <String, String>{'Content-type': 'application/json'},
        body: jsonEncode({
          'nome': produto.nome,
          'valor': produto.valor,
          'categoria': produto.categoria,
          'parcelas': produto.parcelas,
          'descricao': produto.descricao,
          'detalhes': produto.detalhes,
          'imagem': produto.imagem,
        }),
      );

      if (response.statusCode == 200) {
        print('Produto atualizado com sucesso!');
      } else {
        print('Falha ao atualizar o produto. Status code: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    } catch (e) {
      print('Erro ao tentar atualizar o produto: $e');
    }
  }

  Future<void> removerProduto(int productId) async {
    try {
      final response = await http.delete(
        Uri.parse('http://localhost:8000/api/produtos/$productId'),
      );

      if (response.statusCode == 200) {
        print('Produto removido com sucesso!');
      } else {
        print('Falha ao remover o produto. Status code: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    } catch (e) {
      print('Erro ao tentar remover o produto: $e');
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
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                    ],
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
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                    ],
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
                  TextField(
                    controller: imagemController,
                    decoration: const InputDecoration(
                      labelText: 'Caminho da imagem',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (valor) {
                      setState(() {
                        produto.imagem = valor;
                      });
                    },
                  ),


                  // TextButton(
                  //       onPressed: () async {
                  //         // Lógica para selecionar a imagem
                  //         final XFile? imagemSelecionada = await ImagePicker()
                  //         .pickImage(source:ImageSource.gallery);
                  //         if (imagemSelecionada != null) {
                  //           setState(() {
                  //             this.imagemSelecionada = imagemSelecionada;
                  //           });
                  //         }
                  //       },
                  //       style: TextButton.styleFrom(
                  //         foregroundColor: Colors.pink, // Cor do texto
                  //       ),
                  //       child: Text('Selecionar Imagem'),
                  //     ),
                    // TextFormField(
                    //     decoration: const InputDecoration(labelText: "Imagem"),
                    //     readOnly: true,
                    //     controller: TextEditingController(text: imagemSelecionada),
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
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      atualizarProduto(produto);
                    },
                    child: const Text("Atualizar Produto"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final productId = int.tryParse(idController.text);
                      if (productId != null) {
                        removerProduto(productId);
                      } else {
                        print('ID do produto inválido');
                      }
                    },
                    child: const Text("Remover Produto"),
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
                    return Text('${snapshot.error?.toString()}');
                  } else {
                    final List<Produto>? produtos = snapshot.data;
                    if (produtos == null || produtos.isEmpty) {
                      return const Text('Nenhum produto cadastrado.');
                    } else {
                      return ListView.builder(
                        itemCount: produtos.length,
                        itemBuilder: (context, index) {
                          final product = produtos[index];
                          return ListTile(
                            title: Text(product.nome ?? ''),
                            subtitle: Text(product.categoria ?? ''),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DetalhesProduto(productData: product),
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
