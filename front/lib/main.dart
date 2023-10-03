// Pacote Material
import 'package:hackadev/widgets/Layout.dart';
import 'package:flutter/material.dart';

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
        primaryColor: const Color(0xffCD0069),
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
        colorScheme:
            ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 228, 52, 184)),
      ),
      home: const Layout(),
    );
  }
}
