// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Recomendados extends StatefulWidget {
  const Recomendados({super.key});

  @override
  State<StatefulWidget> createState() {
    return RecomendadosState();
  }
}

class RecomendadosState extends State {
  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: <Widget>[
        Container(
          
          child: Row(
            
            children: [
              
             Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12), 
              border: Border.all(color: Colors.pink)),
          child: Column(
            children: [
              Container(
                child: Text('Iphone 13 128gb', style: TextStyle(fontFamily: 'Montserrat',
                fontSize: 15.0, fontWeight: FontWeight.bold,),),
                
              ),
              Container(
                height: 170.0,
                width: 150.0,
                 
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/imagem1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
             /* Container(
                child: const Text("Teste", style: TextStyle(fontFamily: 'Roboto'),),
              ),*/
              Container(
                height: 15.0,
                width: 100.0,
                decoration: BoxDecoration(
                  color: Colors.pink[800],
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text("R\$ 1000,00"), 
                )
              )
            ],
          ),
        ),
        
        SizedBox(width: 20),
       
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12), 
              border: Border.all(color: Colors.pink)),
          child: Column(
            children: [
              Container(
                child: Text('Iphone 13 128gb', style: TextStyle(fontFamily: 'Montserrat',
                fontSize: 15.0, fontWeight: FontWeight.bold,),),
                
              ),
              Container(
                height: 170.0,
                 width: 150.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/imagem1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
             /* Container(
                child: const Text("Teste", style: TextStyle(fontFamily: 'Roboto'),),
              ),*/
              Container(
                height: 15.0,
                width: 100.0,
                decoration: BoxDecoration(
                  color: Colors.pink[800],
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text("R\$ 1000,00"), 
                )
              )
            ],
          ),
        ),
            ],
          ),
        )
      ],
    );
  }
}
