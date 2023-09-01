import 'package:flutter/material.dart';
import 'package:hackadev/widgets/layoutTodos.dart';



class BotTodos extends StatefulWidget {
  const BotTodos({super.key});

  @override
  State<StatefulWidget> createState() {
    return BotTodosState();
  }
}

class BotTodosState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: SizedBox(
              height: 35,
              width: 40,
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black, // Text Color
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LayoutTodos()));
                      },
                      child: const Text("SmartPhones"),
                    ),
                  ],
                ),
              ),
            ));
  }
}
