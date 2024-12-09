import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Accueil(),
    );
  }
}


class Accueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(),
      body: const Column(
        children: [
          Text('Accueil'),
          Icon(
            Icons.backup,
            color: Colors.blue,
            size: 50.0,
            semanticLabel: "Upload to cloud", // Pemet de donner une description à l'icone pour les personnes malvoyantes
          ),
          Text('Accueil'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.purple,
                size: 50.0,
                semanticLabel: "Heart icon",
              ),
              Text('Accueil'),
              Icon(
                Icons.favorite,
                color: Colors.purple,
                size: 50.0,
                semanticLabel: "Heart icon",
              )
            ],
          )
        ],
      ),
    );
  }

}