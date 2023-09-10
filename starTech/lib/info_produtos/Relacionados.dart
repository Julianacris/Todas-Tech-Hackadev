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
        title: Text('Produtos Relacionados'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'starTech/assets/images/black white simple star logo (2).png', // Substitua pelo caminho da sua logo
              width: 150.0,
              height: 150.0,
            ),
            SizedBox(height: 20.0),
            Text(
              'Produtos Relacionados:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 43, 0, 23), // Cor vinho
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
                  imagePath: 'starTech/assets/images/iphone-azul.png', 
                  productName: 'Iphone 13 128gb',
                  productPrice: '\$3499,00', // Preço fictício
                );
                return ProductCard(
                  imagePath: 'starTech/assets/images/drone-dji.png', 
                  productName: 'Drone DJI Mini 2',
                  productPrice: '\$1899,00', // Preço fictício
                );
                return ProductCard(
                  imagePath: 'starTech/assets/images/celular-motorola.png', 
                  productName: 'Motorola Edge',
                  productPrice: '\$2099,00', // Preço fictício
                );
                return ProductCard(
                  imagePath: 'starTech/assets/images/tvSmart-philco.png', 
                  productName: 'TV Smart Philco 32',
                  productPrice: '\$1999,00', // Preço fictício
                );
                return ProductCard(
                  imagePath: 'starTech/assets/images/alexa-echo.png', 
                  productName: 'Echo Dot Alexa',
                  productPrice: '\$629,00', // Preço fictício
                );
               return ProductCard(
                  imagePath: 'starTech/assets/images/purificador-agua.png', 
                  productName: 'Purificador de Água Electrolux',
                  productPrice: '\$1139,00', // Preço fictício
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
      color: Color.fromARGB(255, 255, 214, 228), // Cor rosa para o quadradinho
      child: Column(
        children: <Widget>[
          Image.asset(
            imagePath,
            width: 80.0,
            height: 80.0,
          ),
          Text(
            productName,
            style: TextStyle(
              color: Color.fromARGB(255, 44, 0, 26), // Cor vinho para o nome do produto
            ),
          ),
          Text(
            productPrice,
            style: TextStyle(
              color: Color.fromARGB(255, 26, 0, 14), // Cor vinho para o preço
            ),
          ),
        ],
      ),
    );
  }
}
