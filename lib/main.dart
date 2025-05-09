import 'package:flutter/material.dart';
import 'package:flutter_cours_1/home.dart';

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
      home: Home(),
    );
  }
}


// class Accueil extends StatelessWidget {
//   final String _title;
//   Accueil(this._title);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:  AppBar(),
//       body: Column(
//         children: [
//           Text('Bienvenue, $_title'),
//           const Icon(
//             Icons.backup,
//             color: Colors.blue,
//             size: 50.0,
//             semanticLabel: "Upload to cloud", // Pemet de donner une description à l'icone pour les personnes malvoyantes
//           ),
//           Text('Bienvenue, $_title'),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               const Icon(
//                 Icons.favorite,
//                 color: Colors.purple,
//                 size: 50.0,
//                 semanticLabel: "Heart icon",
//               ),
//               Text('Bienvenue, $_title'),
//               const Icon(
//                 Icons.favorite,
//                 color: Colors.purple,
//                 size: 50.0,
//                 semanticLabel: "Heart icon",
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }

// }