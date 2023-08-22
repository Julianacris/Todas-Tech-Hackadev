// Pacote Material
import 'Home.dart';
import 'package:flutter/material.dart';
import 'Celulares.dart';
import 'Portateis.dart';
import 'Tvs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Home(),
    );
  }
}