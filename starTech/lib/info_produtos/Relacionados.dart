//produtos relacionados 

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RelatedProductsScreen(),
    );
  }
}

class RelatedProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos Relacionados:'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'lib/blackwhitesimplestarlogo.png', //  caminho da  logo
              width: 150.0,
              height: 150.0,
            ),
            SizedBox(height: 20.0),
            Text(
              'Produtos Relacionados:',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 71, 0, 59), // Cor vinho
              ),
            ),
            SizedBox(height: 20.0),
            GridView.count(
              crossAxisCount: 2, // 2 quadradinhos por linha
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: List.generate(6, (index) {
                // quadradinhos com as fotos, nome do produto e preço
                return ProductCard(
                  imagePath: 'assets/produto_$index.png', //  caminho da imagem do produto
                  productName: 'Iphone 13 128gb $index',
                  productPrice: '\$${(index + 1) * 1899}', // Preço fictício
                );
              }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Pesquisar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Carrinho',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String productPrice;

  ProductCard({
    required this.imagePath,
    required this.productName,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(
            imagePath,
            width: 80.0,
            height: 80.0,
          ),
          Text(productName),
          Text(productPrice),
        ],
      ),
    );
  }
}
