import 'package:flutter/material.dart';
import 'package:hackadev/widgets/layoutCell.dart';

class BotCelulares extends StatefulWidget {
  const BotCelulares({super.key});

  @override
  State<StatefulWidget> createState() {
    return BotCelularesState();
  }
}

class BotCelularesState extends State {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 110,
    child: Scaffold(
            body: SizedBox(
              height: 40,
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
                                builder: (context) => const LayoutCell()));
                      },
                      child: const Text("SmartPhones"),
                    ),
                  ],
                ),
              ),
            ))
        );
  }
}
