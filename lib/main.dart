import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Nombre total d'éléments dans la grille
  final int itemCount = 100;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bienvenue"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              
              for (int i = 0; i < (itemCount / 3).ceil(); i++)
                Row(
                  children: [
                    // Utilisation d'une boucle pour générer les conteneurs dans chaque rangée
                    for (int j = 0; j < 3; j++)
                      if (i * 3 + j < itemCount)
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                            border: Border.all(
                             color: Colors.black,
                           width: 2.0,
                             )),
                           
                           
                          ),
                        ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
