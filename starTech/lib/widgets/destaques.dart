// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Destaques extends StatefulWidget {
  const Destaques({super.key});

  @override
  State<StatefulWidget> createState() {
    return DestaquesState();
  }
}

class DestaquesState extends State {
  @override
   Widget build(BuildContext context) {
    return Column(
      
      children: [
        Container(
          width: 380,
          height: 30,
         child: const Align(
          alignment: Alignment.centerLeft,
           child: 
           Text(
            'Destaques para você:',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
         ),

        ),
        const SizedBox(height: 10),
       
        Container( 
          
          
          width: 380,
          height: 140,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 205, 0, 106),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(style: BorderStyle.none),
          ),
          child: Stack(

            children: [
            const Align(
             alignment:Alignment.centerLeft,
             child: Column(
              children: [
                Text('#VemPraSTAR', style: TextStyle(color: Colors.white, 
                fontFamily: 'Arial', fontSize: 20)),
          
                SizedBox(height: 5,),
           
                Text("Eletrônicos\n" "com até 70%\n" "OFF", style: TextStyle(color: Colors.white,
                fontFamily: 'Roboto', fontSize: 30, fontWeight: FontWeight.bold, )),
              ],
             ) 
              
            ),
            
            Align(
              alignment: Alignment.centerRight,
              child: Transform.scale(
                scale: 1.4,
                child: Image.asset('assets/images/fones-de-ouvido-preto.png', ),
              ),
            ),
            
            
          ]),
        ),
        ],
    );
  }
}
