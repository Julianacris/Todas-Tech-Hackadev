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
    return Column(
      children: <Widget>[
        const AppSearchBar(),
        Flexible(
            child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: const <Widget>[
            Produto(),
            Produto(),
            Produto(),
            Produto()
          ],
        ))
      ],
    );
  }
}
