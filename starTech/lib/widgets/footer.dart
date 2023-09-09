import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  final Function(int)? onTap;
  const Footer({super.key, required this.onTap});

  @override
  State<StatefulWidget> createState() {
    return FooterState();
  }
}

class FooterState extends State<Footer> {
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
        //currentIndex: opcaoSelecionada,
        onTap: widget.onTap,
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
