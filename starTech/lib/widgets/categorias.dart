import 'package:flutter/material.dart';

class Categorias extends StatefulWidget {
  const Categorias({super.key});

  @override
  State<StatefulWidget> createState() {
    return ConteudoCategorias();
  }

}

class ConteudoCategorias extends State {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 60,
      child: Row(children: [
      
        
        Container(
          child:  Text('Todos', style: TextStyle(fontSize: 20)), 
        ),
        Container(
          child: Text('Todos', style: TextStyle(fontSize: 20)), 
        ),
        Container(
          child: Text('Todos',style: TextStyle(fontSize: 20)), 
        ),
        Container(
          child: Text('Todos', style: TextStyle(fontSize: 20)), 
        ),

      ],)
        
      
    );
  }
}