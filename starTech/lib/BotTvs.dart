import 'package:flutter/material.dart';
import 'package:hackadev/widgets/layoutTvs.dart';



class BotTvs extends StatefulWidget {
  const BotTvs({super.key});

  @override
  State<StatefulWidget> createState() {
    return BotTvsState();
  }
}

class BotTvsState extends State {
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
                                builder: (context) => const LayoutTvs()));
                      },
                      child: const Text("SmartTvs"),
                    ),
                  ],
                ),
              ),
            ))
        );
  }
}