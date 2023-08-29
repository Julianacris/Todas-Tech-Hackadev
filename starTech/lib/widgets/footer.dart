import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<StatefulWidget> createState() {
    return FooterState();
  }
}

class FooterState extends State<Footer> {
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
