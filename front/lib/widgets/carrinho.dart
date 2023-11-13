// import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hackadev/carrinho/carrinho_de_compras.dart';

import 'package:hackadev/carrinho/produto.dart';

class Carrinho extends StatefulWidget {
  const Carrinho({super.key});

  @override
  State<StatefulWidget> createState() {
    return ConteudoCarrinho();
  }
}

class ConteudoCarrinho extends State<Carrinho> {
  List<Produto> produtos = [];
  double totalCarrinho = 0;
  @override
  void initState() {
    super.initState();
    CarrinhoDeCompras.stream.listen((value) {
      produtos = value;
      totalCarrinho = 0;
      for (var element in produtos) {
        totalCarrinho = totalCarrinho + element.valor!;
      }
      //produtos.map((item) => {totalCarrinho = totalCarrinho + item.preco!});
      setState(() {});
    });
  }

  loadProdutos() {
    CarrinhoDeCompras.lerCarrinho();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Carrinho de compras',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Itens: ${produtos.length}',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    'Valor Total: R\$ ${totalCarrinho.toString().replaceAll(".", ",")}',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                    itemCount: CarrinhoDeCompras.produto.length,
                    itemBuilder: (item, index) {
                      Produto p = CarrinhoDeCompras.produto[index];
                      return Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            color: Colors.grey[300],
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    CarrinhoDeCompras.removerProduto(p);
                                  },
                                  child: const Icon(
                                    Icons.delete,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Image.asset(
                                        p.imagem!,
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding:
                                            const EdgeInsets.only(right: 15),
                                        child: Column(
                                          children: [
                                            Text(
                                              p.nome!,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "R\$ ${p.valor!.toStringAsFixed(2).replaceAll(".", ",")}",
                                              style: const TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      );
                    },
                  ),
                ),
              )
            ],
          )),
    );
  }
}