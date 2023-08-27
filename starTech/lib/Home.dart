import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import 'Celulares.dart';
import 'Portateis.dart';
import 'Tvs.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return ConteudoPagina();
  }
}

class ConteudoPagina extends State {
  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
      
    return Scaffold(
    backgroundColor: Colors.white, // Definindo o fundo como branco
       body: Stack(
        children: <Widget>[
          Container(
            // Aqui a altura do contêiner é 45% da nossa altura total
            height: size.height * .30,
            decoration: const BoxDecoration(
             // color: Color(0xFFFFFFFF),
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage("assets/images/logo.png"),
              ),
            ),
          ),
          
          SafeArea(
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 130),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: Text("Olá, Júlio!"), // Texto acima e à esquerda
        ),
        SizedBox(height: 20), // Espaçamento entre o texto e os ícones
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft, // Alinhar à esquerda
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 205, 0, 106), width: 3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "O que você procura hoje?",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent), // Remove a linha abaixo do hintText
                    ),
                    icon: Padding(
                      padding: EdgeInsets.only(right: 20, left: 20), // Espaçamento à direita e a esquerda do ícone
                      child: SvgPicture.asset("assets/icons/search.svg", color: Color.fromARGB(255, 205, 0, 106)), // Ícone de pesquisa rosa
                    ),
                    
                  ),
                ),
              ),
            ),
            SizedBox(width: 20), // Espaçamento entre a barra de pesquisa e o ícone do menu
            Container(
              alignment: Alignment.center, // Alinhar à direita
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 205, 0, 106),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset("assets/icons/menu.svg"),
            ),
          ],
        ),
      ],
    ),
  ),
)
        ],
      ),  
      bottomNavigationBar: BottomNavigation(),  
    );
  }
}

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<StatefulWidget> createState() {
    return BottomNavigationWidget();
  }
}
 
class BottomNavigationWidget extends State <BottomNavigation> {
 int selectedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined, color: Colors.black),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list_outlined, color: Colors.black),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined, color: Colors.black),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline, color: Colors.black),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline, color: Colors.black),
          label: '',
        ),
      ],
      
      
    );
  }
}


