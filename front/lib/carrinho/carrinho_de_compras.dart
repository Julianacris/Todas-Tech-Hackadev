import 'dart:async';

import 'package:hackadev/carrinho/produto.dart';

class CarrinhoDeCompras {
  static List<Produto> produto = [];

  static StreamController<List<Produto>> controller =
      StreamController<List<Produto>>();

  static Stream stream = controller.stream;

  static final CarrinhoDeCompras _carrinhoDeCompras =
      CarrinhoDeCompras._internal();

  factory CarrinhoDeCompras() {
    return _carrinhoDeCompras;
  }

  CarrinhoDeCompras._internal();

  static adicionarProduto(Produto p) {
    produto.add(p);
    controller.add(produto);
  }

  static removerProduto(Produto p) {
    List<Produto> tempListProduto = [];

    for (var element in produto) {
      if (p.nome != element.nome) {
        tempListProduto.add(element);
      }
    }
    produto = tempListProduto;
    controller.add(tempListProduto);
  }

  static List<Produto> lerCarrinho() {
    return produto;
  }
}