import 'package:flutter/material.dart';
import 'package:hackadev/pages/portateisPg.dart';
import 'package:hackadev/pages/produtos.dart';
import 'package:hackadev/pages/tvsPg.dart';

import '../pages/celularesPg.dart';

class Categorias extends StatefulWidget {
  final Function? opcaoSelecionadaFuncao;
  const Categorias({super.key, this.opcaoSelecionadaFuncao});

  @override
  State<StatefulWidget> createState() {
    return ConteudoCategorias();
  }
}

class ConteudoCategorias extends State<Categorias> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            // color: Colors.pink[100],
            border: Border(
                top: BorderSide(
                  color: Colors.pink.shade300,
                  width: 5,
                ),
                bottom: BorderSide(
                  color: Colors.pink.shade300,
                  width: 5,
                ))),
        height: 50,
        child: Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 400,
            child: Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black, // Text Color
                  ),
                  onPressed: () {
                    if (widget.opcaoSelecionadaFuncao != null) {
                      widget.opcaoSelecionadaFuncao!(
                          4,
                          Produtos(
                            opcaoSelecionadaFuncao:
                                widget.opcaoSelecionadaFuncao!,
                          ));
                    }
                  },
                  child: const Text("Todos"),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black, // Text Color
                  ),
                  onPressed: () {
                    if (widget.opcaoSelecionadaFuncao != null) {
                      widget.opcaoSelecionadaFuncao!(
                        4,
                        CelularesPg(
                          opcaoSelecionadaFuncao:
                              widget.opcaoSelecionadaFuncao!,
                        ),
                      );
                    }
                  },
                  child: const Text("SmartPhones"),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black, // Text Color
                  ),
                  onPressed: () {
                    if (widget.opcaoSelecionadaFuncao != null) {
                      widget.opcaoSelecionadaFuncao!(
                          4,
                          PortateisPg(
                            opcaoSelecionadaFuncao:
                                widget.opcaoSelecionadaFuncao!,
                          ));
                    }
                  },
                  child: const Text("Eletroportáteis"),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black, // Text Color
                  ),
                  onPressed: () {
                    if (widget.opcaoSelecionadaFuncao != null) {
                      widget.opcaoSelecionadaFuncao!(
                          4,
                          TvsPg(
                            opcaoSelecionadaFuncao:
                                widget.opcaoSelecionadaFuncao!,
                          ));
                    }
                  },
                  child: const Text("SmartTvs"),
                ),
              ],
            ),
          ),
        ));
  }
}
