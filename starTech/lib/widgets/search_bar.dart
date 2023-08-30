import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          padding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 130),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft, // Alinhar à esquerda
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 205, 0, 106),
                            width: 3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "O que você procura hoje?",
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors
                                    .transparent), // Remove a linha abaixo do hintText
                          ),
                          icon: Padding(
                            padding: const EdgeInsets.only(
                                right: 20,
                                left:
                                    20), // Espaçamento à direita e a esquerda do ícone
                            child: SvgPicture.asset(
                                "assets/icons/search.svg",
                                color: const Color.fromARGB(255, 205, 0, 106)), // Ícone de pesquisa rosa
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox( width: 20), // Espaçamento entre a barra de pesquisa e o ícone do menu
                  Container(
                    alignment: Alignment.center, // Alinhar à direita
                    height: 32,
                    width: 32,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 205, 0, 106),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset("assets/icons/menu.svg"),
                  ),
                ],
              ),
            ],
          ),
        );
  }
}