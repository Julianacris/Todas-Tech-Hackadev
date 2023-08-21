import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pagina extends StatefulWidget {
  const Pagina({super.key});

  @override
  State<StatefulWidget> createState() {
    return ConteudoPagina();
  }
}

class ConteudoPagina extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes de formulário"),
      ),
      //body: const ElementoStatefulWidget());
      // body: const Column(
      //   children: [
      //     ElementoStatefulWidget1(),
      //     ElementoStatefulWidget2(),
      //     ElementoStatefulWidget3(),
      //     ElementoStatefulWidget4()
      //   ],
      body: const ElementoStatefulWidget5(),
    );
  }
}
class ElementoStatefulWidget5 extends StatefulWidget {
  const ElementoStatefulWidget5({super.key});

  @override
  State<StatefulWidget> createState() {
    return ExercicioState();
  }
}
class ExercicioState extends State {
  String? nome;
  List<String> cidades = [
    "Selecione uma cidade",
    "Goiânia",
    "São Paulo",
    "Curitiba"
  ];
  bool estuda = false;
  String cidadeSelecionada = "Selecione uma cidade";
  String? mensagem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: TextField(
                    decoration: const InputDecoration(hintText: 'Nome'),
                    onChanged: (valor) {
                      setState(() {
                        nome = valor;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: 300,
                  child: DropdownButton<String>(
                    focusColor: Colors.transparent,
                    value: cidadeSelecionada,
                    items: cidades.map(
                      (n) {
                        return DropdownMenuItem<String>(
                          value: n,
                          child: Text(n),
                        );
                      },
                    ).toList(),
                    onChanged: (cidade) {
                      setState(() {
                        cidadeSelecionada = cidade!;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Você estuda?",
                        textDirection: TextDirection.ltr,
                      ),
                      Checkbox(
                        value: estuda,
                        onChanged: (valor) {
                          setState(() {
                            estuda = valor!;
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  child: const Text("Continuar"),
                  onPressed: () {
                    setState(() {
                      if (nome == "" || nome == null) {
                        mensagem = "Informe um nome";
                      } else if (cidadeSelecionada == "Selecione uma cidade") {
                        mensagem = "Informe uma cidade";
                      } else {
                        mensagem =
                            "$nome mora em $cidadeSelecionada e ${estuda == true ? 'está estudando.' : 'não está estudando.'}";
                      }
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text("${mensagem ?? ''} "),
              )
            ],
          )
        ],
      ),
    );
  }
}