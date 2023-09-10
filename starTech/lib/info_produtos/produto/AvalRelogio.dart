// Aqui vai ficar as avaliações do produto - lembrar de colocar um campo para o usuário adicionar as avaliações - Beatriz

import 'package:flutter/material.dart';

//import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AvalRelogio extends StatefulWidget {
  const AvalRelogio({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CustomerSatisfactionScreenState();
  }
}

class _CustomerSatisfactionScreenState extends State {
  int _selectedRating = 0;
  
  String opinion = '';

  void _handleRatingChange(int newRating) {
    setState(() {
      _selectedRating = newRating;
    });
  }

  void _saveChanges() {
    // Aqui é para adicionar a lógica para salvar o envio das avaliações e opiniões do usuario 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'AVALIAÇÕES',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 166, 3, 87),
              ),
            ),
          //  const SizedBox(height: 5.0),
            Text(
              '$_selectedRating',
              style: const TextStyle(
                fontSize: 100.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 166, 3, 87),
              ),
            ),
            //const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                for (int i = 1; i <= 5; i++)
                  GestureDetector(
                    onTap: () {
                      _handleRatingChange(i);
                    },
                    child: Icon(
                      Icons.star,
                      size: 25.0,
                      color: _selectedRating >= i
                          ? const Color.fromARGB(255, 166, 3, 87)
                          : const Color.fromARGB(255, 189, 162, 162),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 10.0),
            Container(
                height: 120,
                width: 350,
                decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 166, 3, 87), 
                                   width: 3), // Cor da borda rosa
                borderRadius: const BorderRadius.all(Radius.circular(8.0)), // Raio de curvatura do contorno
                ),
                child: TextField(
                decoration: const InputDecoration(
                hintText: 'Digite aqui a sua avaliação:',
                contentPadding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
                border: InputBorder.none, // Remove a borda interna do TextField
                ),
                   maxLines: 3,
                   onChanged: (text) {
                   setState(() {
                   opinion = text;
                  });
                },
              ),
            ),
            const SizedBox(height: 15.0),
            ElevatedButton(
               onPressed: _saveChanges,
               style: ElevatedButton.styleFrom(
               foregroundColor: const Color.fromARGB(255, 252, 252, 252),
               backgroundColor: const Color.fromARGB(255, 166, 3, 87),
               minimumSize: const Size(300.0, 50.0),
               textStyle: const TextStyle(
               fontWeight: FontWeight.bold, // Define o texto em negrito
               fontSize: 20.0, // Define o tamanho da fonte
               ),
              ),
             child: const Text('Salvar Avaliação'),
            )
          ],
        ),
      ),
    );
  }
}
