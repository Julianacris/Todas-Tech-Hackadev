import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


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
       body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .25,
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage("assets/images/logo.png"),
              ),
            ),
          ),
          
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


