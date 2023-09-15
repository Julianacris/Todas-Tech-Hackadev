import 'package:flutter/material.dart';

class AppSearchBar extends StatefulWidget {
  const AppSearchBar({super.key});

  @override
  State<StatefulWidget> createState() {
    return AppSearchBarState();
  }
}

class AppSearchBarState extends State {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  width: 32,
                  alignment: Alignment.centerLeft, // Alinhar à esquerda
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 205, 0, 106),
                        width: 3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "O que você procura hoje?",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .transparent), // Remove a linha abaixo do hintText
                      ),
                      icon: Padding(
                        padding: EdgeInsets.only(
                            right: 20,
                            left:
                                20), // Espaçamento à direita e a esquerda do ícone

                        child: Icon(Icons.search,
                            color: Color.fromARGB(
                                255, 205, 0, 106)), // Ícone de pesquisa rosa
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                  width:
                      20), // Espaçamento entre a barra de pesquisa e o ícone do menu
              Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.center, // Alinhar à direita
                height: 50,
                width: 50,

                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 205, 0, 106),
                  //shape: BoxShape.circle,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(style: BorderStyle.none),
                ),
                child: const Icon(Icons.menu, color: Colors.white),

                //child: SvgPicture.asset("assets/icons/menu.svg"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
