import 'package:flutter/material.dart';
import 'package:hackadev/widgets/produto.dart';
import 'package:hackadev/widgets/search_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        AppSearchBar(),
        Produto(),
        Produto(),
      ],
    );
  }
}
