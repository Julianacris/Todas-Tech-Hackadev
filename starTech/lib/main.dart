// Pacote Material
import 'Home.dart';
import 'package:flutter/material.dart';
import 'Celulares.dart';
import 'Portateis.dart';
import 'Tvs.dart';
import 'search_bar.dart';
import 'constants.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Star Tech',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
        //colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 228, 52, 184)),

      ),
      home:  Home(),
    );
  }
}
