import 'package:flutter/material.dart';

class BotaoComprar extends StatefulWidget{
  const BotaoComprar({super.key});

  @override
  State<StatefulWidget> createState() {
    return BotaoComprarWidget();
  }

}

class BotaoComprarWidget extends State {
  
  @override
  Widget build(BuildContext context) {
    return Padding(padding: 
    EdgeInsets.all(100),
    
    child: Container(
      width: 205,
      height: 38,
      
      child: ElevatedButton(
      onPressed: () {
        // Adicione ação aqui
      },
      
      child: Text(
        'COMPRAR',
        style: TextStyle(
        fontSize: 20, // Tamanho da fonte do texto
        color: Colors.white,
        fontWeight: FontWeight.bold, // Cor do texto
      ),),
      style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 99, 21, 46),
      
      
    ), // Espaçamento interno
    ),

    ),
    );
  }
}