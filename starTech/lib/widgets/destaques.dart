// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return Container(
      color: Colors.pink,
      height: 170,
      child: Center(
        child: Text('Destaques'),
      ),
    );
  }
}
