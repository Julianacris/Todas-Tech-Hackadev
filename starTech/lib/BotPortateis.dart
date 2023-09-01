import 'package:flutter/material.dart';
import 'package:hackadev/widgets/layoutPort.dart';



class BotPortateis extends StatefulWidget {
  const BotPortateis({super.key});

  @override
  State<StatefulWidget> createState() {
    return BotPortateisState();
  }
}

class BotPortateisState extends State {
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
                                builder: (context) => const LayoutPort()));
                      },
                      child: const Text("Eletro"),
                    ),
                  ],
                ),
              ),
            ));
  }
}
