import 'package:flutter/material.dart';
import 'package:hackadev/pages/home.dart';
import 'package:hackadev/widgets/perfil.dart';
import 'carrinho.dart';
import 'favoritos.dart';



class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<StatefulWidget> createState() {
    return FooterState();
  }
}

class FooterState extends State<Footer> {
 int opcaoSelecionada = 0;

  List<Icon> iconList = const [
    Icon(Icons.home_outlined, color: Colors.black),
    Icon(Icons.shopping_cart_outlined, color: Colors.black),
    Icon(Icons.favorite_outline, color: Colors.black),
    Icon(Icons.person_outlined, color: Colors.black),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: opcaoSelecionada,
            onTap: (opcao){
            
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
        
        body:  IndexedStack(
          index: opcaoSelecionada,
          children: const <Widget> [
            Home(),
            Carrinho(),
            Favoritos(),
            Perfil(),
          ],
        )
        
    );
    
  }
}
// Função para decorar o ícone com borda
  Widget decorateIcon(Icon icon) {
    return Container(
      
      padding: const EdgeInsets.all(8.0),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.pink[100],
        borderRadius: BorderRadius.circular(20),
        border: Border.all(style: BorderStyle.none),
      ),
      child: icon,
    );
  }

