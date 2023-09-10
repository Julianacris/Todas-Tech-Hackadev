import 'package:flutter/material.dart';
import 'package:hackadev/pages/home.dart';
import 'package:hackadev/widgets/carrinho.dart';
import 'package:hackadev/widgets/favoritos.dart';

import 'package:hackadev/widgets/footer.dart';
import 'package:hackadev/widgets/perfil.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<StatefulWidget> createState() {
    return LayoutState();
  }
}

class LayoutState extends State {
  List<Icon> iconList = const [
    Icon(Icons.home_outlined, color: Colors.black),
    Icon(Icons.shopping_cart_outlined, color: Colors.black),
    Icon(Icons.favorite_outline, color: Colors.black),
    Icon(Icons.person_outlined, color: Colors.black),
  ];

  int opcaoSelecionada = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('aaa');
  }

  Widget customWidget = Container(
    color: Colors.amber,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Image.asset("assets/images/logoStar.png", fit: BoxFit.cover),
        shadowColor: const Color.fromARGB(0, 0, 0, 0),
      ),
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: opcaoSelecionada,
        children: <Widget>[
          Home(
            opcaoSelecionadaFuncao: (int novoValor, Widget custom) {
              setState(() {
                print('este valor foi recebido na funcao do layout.dart');
                print(novoValor);
                opcaoSelecionada = novoValor;
                customWidget = custom;
                print(opcaoSelecionada);
              });
            },
          ),
          const Carrinho(),
          const Favoritos(),
          const Perfil(),
          Container(
            child: customWidget,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (opcao) {
          setState(() {
            opcaoSelecionada = opcao;
          });
        },
        items: iconList.map((icon) {
          return BottomNavigationBarItem(
            icon: decorateIcon(icon), // Chamando a função para decorar o ícone
            label: '',
          );
        }).toList(),
      ),
    );
  }
}
