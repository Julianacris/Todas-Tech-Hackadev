import 'package:flutter/material.dart';
import 'package:hackadev/BotCelulares.dart';
import 'package:hackadev/BotPortateis.dart';
import 'package:hackadev/BotTodos.dart';
import 'package:hackadev/BotTvs.dart';


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
        color: Colors.pink[100],
        height: 50,
        child: const Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: 40,
            width: 400,
            child: Row(
              children: [
                BotTodos(),
                BotCelulares(),
                BotPortateis(),
                BotTvs(),

                // TextButton(
                //   style: TextButton.styleFrom(
                //     foregroundColor: Colors.black, // Text Color
                //   ),
                //   onPressed: () {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => const LayoutTodos()));
                //   },
                //   child: const Text("Todos"),
                // ),
                // TextButton(
                //   style: TextButton.styleFrom(
                //     foregroundColor: Colors.black, // Text Color
                //   ),
                //   onPressed: () {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => const LayoutCell()));
                //   },
                //   child: const Text("SmartPhones"),
                // ),
                // TextButton(
                //   style: TextButton.styleFrom(
                //     foregroundColor: Colors.black, // Text Color
                //   ),
                //   onPressed: () {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => const LayoutPort()));
                //   },
                //   child: const Text("Eletroportáteis"),
                // ),
                // TextButton(
                //   style: TextButton.styleFrom(
                //     foregroundColor: Colors.black, // Text Color
                //   ),
                //   onPressed: () {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => const LayoutTvs()));
                //   },
                //   child: const Text("SmartTvs"),
                // ),

              ],
            ),
          ),
        ));
  }
}

