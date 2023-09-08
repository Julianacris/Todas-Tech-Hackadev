import 'package:flutter/material.dart';


class InfoRelogio extends StatefulWidget {
  const InfoRelogio({super.key});

  @override
  State<StatefulWidget> createState() {
    return InfoRelogioState();
  }
}

class InfoRelogioState extends State {
  @override
  Widget build(BuildContext context) {

     return Padding(
      padding: EdgeInsets.all(16.0),
      child:  Container(
       width: 350,
       height: 450,
       decoration: BoxDecoration(
        color: Colors.pink[100],
        borderRadius: BorderRadius.circular(20),
        border: Border.all(style: BorderStyle.none),
      ),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/relogio-amazfit.png', // Caminho para a imagem local
            width: 250, // Largura da imagem
            height: 250, // Altura da imagem
            //fit: BoxFit.cover, // Ajuste da imagem
          ),
          const SizedBox(height: 10.0), // Espaçamento vertical entre a imagem e o texto
          const Text(
            'Relógio Amazfit GTS 4',
            style: TextStyle(
              fontSize: 25, // Tamanho da fonte do texto
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          
          const SizedBox(height: 10.0,),

          Container(
            height: 35,
            width: 180,
            decoration: BoxDecoration(
            color: Color.fromARGB(255, 99, 21, 46),
            borderRadius: BorderRadius.circular(30)),
            
            child: const Align(
              alignment: Alignment.center,
              child: Text('R\$ 419,00', style: TextStyle(fontFamily: 'Arial', 
              fontSize: 20, color: Colors.white,
              fontWeight: FontWeight.bold),),
            ),
          ),
          
          const SizedBox(height: 10.0,),
          const Row (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color:  Color.fromARGB(255, 99, 21, 46)),
              Icon(Icons.star, color:  Color.fromARGB(255, 99, 21, 46)),
              Icon(Icons.star, color:  Color.fromARGB(255, 99, 21, 46)),
              Icon(Icons.star, color:  Color.fromARGB(255, 99, 21, 46)),
              Icon(Icons.star_border, color:  Color.fromARGB(255, 99, 21, 46),),
            ],
          ),

        ],
        
      ),
    
    ),);
  }
}
