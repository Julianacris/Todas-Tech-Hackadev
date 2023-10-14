import 'package:flutter/material.dart';
import 'package:hackadev/pages/DetalhesProduto.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}


Future<List<Produto>> listarProdutos() async {
  final response = await http.get(Uri.parse('http://localhost:3000/produtos'));
  if (response.statusCode == 200) {
    final List<dynamic> responseData = json.decode(response.body);
    return responseData.map((json) => Produto.fromJson(json)).toList();
  } else {
    throw Exception('Falha ao carregar os produtos');
  }
}

Future<void> cadastrarProdutos(
  String nome,
  String categoria,
  double preco,
  int quantidadeEstrelas,
  int quantidadeMaxParcelas,
  double valorDaParcela,
  String descricaoLonga,
  String detalhesTecnicos,
) async {
  await http.post(
    Uri.parse('http://localhost:3000/produtos'),
    headers: <String, String>{'Content-type': 'application/json'},
    body: jsonEncode(<String, dynamic>{
      'nome': nome,
      'preco': preco,
      'categoria': categoria,
      'quantidadeEstrelas': quantidadeEstrelas,
      'quantidadeMaxParcelas': quantidadeMaxParcelas,
      'valorDaParcela': valorDaParcela,
      'descricaoLonga': descricaoLonga,
      'detalhesTecnicos': detalhesTecnicos,
    }),
  );
}

class CadastroProdutos extends StatefulWidget {
  const CadastroProdutos({super.key});

  @override
  State<StatefulWidget> createState() {
    return CadastroProdutosWidget();
  }
}

class CadastroProdutosWidget extends State<CadastroProdutos> {
  final TextEditingController controller = TextEditingController();

  //Para o DropDownMenu
  //String categoriaValue = 'Todos';

  // Variáveis
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
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back),
        //   onPressed: () {
        //     Navigator.of(context).push(
        //       MaterialPageRoute(
        //         builder: (context) => const Perfil(),
        //       ),
        //     );
        //   },
        // ),
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
              // Chama a função para buscar os produtos novamente
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
                    decoration: const InputDecoration(
                      labelText: 'Nome do Produto',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (valor) {
                      setState(() {
                        nome = valor;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Preço',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (valor) {
                      setState(() {
                        preco = double.tryParse(valor);
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownButton<String>(
                    hint: const Text('Selecione uma categoria'),
                    value: categoria,
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
                        categoria = valor;
                      });
                    },
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Quantidade de estrelas',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (valor) {
                      setState(() {
                        quantidadeEstrelas = int.tryParse(valor);
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Quantidade máxima de parcelas',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (valor) {
                      setState(() {
                        quantidadeMaxParcelas = int.tryParse(valor);
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Valor da parcela',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (valor) {
                      setState(() {
                        valorDaParcela = double.tryParse(valor);
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Descrição longa',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (valor) {
                      setState(() {
                        descricaoLonga = valor;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Detalhes técnicos',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (valor) {
                      setState(() {
                        detalhesTecnicos = valor;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
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
                        detalhesTecnicos!,
                      );
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
                    return const Text('Erro ao carregar os produtos');
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro de Produtos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: CadastroProdutos(),
    );
  }
}
