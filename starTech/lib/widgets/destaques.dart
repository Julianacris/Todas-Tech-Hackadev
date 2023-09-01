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
          
          child: 
          const Text(
            'Destaques para você:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

        ),
        const SizedBox(height: 10),
       
        Container( 
          
          width: 380,
          height: 160,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 205, 0, 106),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(style: BorderStyle.none),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
            Text('#VemPraSTAR', style: TextStyle(color: Colors.white, 
            fontFamily: 'Arial', fontSize: 20)),
          
            
            Text("Eletrônicos\n" "com até 70%\n" "OFF", style: TextStyle(color: Colors.white,
            fontFamily: 'Roboto', fontSize: 30, fontWeight: FontWeight.bold, )),
            
          ]),
        ),
        ],
    );
  }
}
