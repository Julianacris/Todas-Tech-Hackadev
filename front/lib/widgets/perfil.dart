import 'package:flutter/material.dart';
import 'cadastroProduto.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<StatefulWidget> createState() {
    return ConteudoPerfil();
  }
}

class ConteudoPerfil extends State {
  // Função para navegar para a segunda página
  void _navigateToSecondPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CadastroProdutos(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 50,
          child: ElevatedButton(
            onPressed: _navigateToSecondPage,
            child: const Text(
              'Cadastrar Produtos',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
