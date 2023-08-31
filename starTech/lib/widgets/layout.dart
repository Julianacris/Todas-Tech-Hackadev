import 'package:flutter/material.dart';
import 'package:hackadev/pages/home.dart';

import 'package:hackadev/widgets/footer.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<StatefulWidget> createState() {
    return LayoutState();
  }
}

class LayoutState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Image.asset("assets/images/logoStar.png", fit: BoxFit.cover),
        shadowColor: const Color.fromARGB(0, 0, 0, 0),
      ),
      backgroundColor: Colors.white,
      body: const Home(),
      bottomNavigationBar: const Footer(),
    );
  }
}
