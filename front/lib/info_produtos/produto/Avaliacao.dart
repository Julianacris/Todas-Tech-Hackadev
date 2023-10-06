// Aqui vai ficar as avaliações do produto - lembrar de colocar um campo para o usuário adicionar as avaliações - Beatriz

import 'package:flutter/material.dart';

class CustomerRating {
  final String name;
  final int rating;
  final String opinion;

  CustomerRating(
      {required this.name, required this.rating, required this.opinion});
}

class Avaliacao extends StatefulWidget {
  const Avaliacao({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CustomerSatisfactionScreenState();
  }
}

class _CustomerSatisfactionScreenState extends State {
  TextEditingController nameController = TextEditingController();
  TextEditingController opinionController = TextEditingController();

  int _selectedRating = 0;
  String opinion = '';
  String name = '';
  List<CustomerRating> customerRatings = [];

  void _handleRatingChange(int newRating) {
    setState(() {
      _selectedRating = newRating;
    });
  }

  void _saveChanges() {
    // Validando que o nome e opinião não estão vazios
    if (name.isNotEmpty && opinion.isNotEmpty) {
      setState(() {
        customerRatings.add(CustomerRating(
            name: name, rating: _selectedRating, opinion: opinion));
        nameController.clear(); // Limpa o campo do nome
        opinionController.clear(); // Limpa o campo da opinião
        _selectedRating = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 40.0),
            const Text(
              'AVALIAÇÕES',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 147, 0, 75),
              ),
            ),
            Text(
              '$_selectedRating',
              style: const TextStyle(
                fontSize: 100.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 147, 0, 75),
              ),
            ),
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
                          ? const Color.fromARGB(255, 147, 0, 75)
                          : const Color.fromARGB(255, 189, 162, 162),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 20.0),
            Container(
              height: 120,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 147, 0, 75), width: 3),
                borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              ),
              child: TextField(
                controller: opinionController,
                decoration: const InputDecoration(
                  hintText: 'Digite aqui a sua avaliação:',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
                  border: InputBorder.none,
                ),
                maxLines: 3,
                onChanged: (text) {
                  setState(() {
                    opinion = text;
                  });
                },
              ),
            ),
            const SizedBox(height: 10.0),
            Container(
              width: 350,
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: 'Digite o seu nome:',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                ),
                onChanged: (text) {
                  setState(() {
                    name = text;
                  });
                },
              ),
            ),
            const SizedBox(height: 15.0),
            ElevatedButton(
              onPressed: _saveChanges,
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 252, 252, 252),
                backgroundColor: const Color.fromARGB(255, 147, 0, 75),
                minimumSize: const Size(300.0, 50.0),
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              child: const Text('Salvar Avaliação'),
            ),
            const SizedBox(height: 20.0),

            /* const Text(
              'Avaliações Registradas:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 166, 3, 87),
              ),
            ),*/

            const SizedBox(height: 10.0),
            Expanded(
                child: ListView.builder(
              itemCount: customerRatings.length,
              itemBuilder: (BuildContext context, int index) {
                final rating = customerRatings[index];
                return Column(
                  children: [
                    const Divider(
                      color: Color.fromARGB(255, 147, 0, 75),
                      thickness:
                          3.0, // Espessura da linha abaixo de cada conjunto
                    ),
                    ListTile(
                      title: Center(
                        child: Text(
                          ' ${rating.name}',
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 147, 0, 75),
                          ),
                        ),
                      ),
                      subtitle: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .center, // Centralizando as opniões
                          children: [
                            Text(' ${rating.opinion}'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .center, // Centralizando as estrelas
                              children: [
                                for (int i = 1; i <= 5; i++)
                                  Icon(
                                    Icons.star,
                                    size: 20.0,
                                    color: i <= rating.rating
                                        ? const Color.fromARGB(255, 147, 0, 75)
                                        : const Color.fromARGB(
                                            255, 189, 162, 162),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 147, 0, 75),
                      thickness:
                          3.0, // Espessura da linha abaixo de cada conjunto
                    ),

                    const SizedBox(height: 10.0), // Espaço entre as avaliações
                  ],
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
