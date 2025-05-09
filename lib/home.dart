import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _score = 0;
  var _displayTextButton = true;

  _plusButtonClicked() {
    setState(() {
      _score++;
    });
  }
  
  _toggleDisplayTextButton() {
    setState(() {
      _displayTextButton = !_displayTextButton;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("Score : $_score"),
          IconButton(
            onPressed: _plusButtonClicked, 
            icon: const Icon(Icons.plus_one),
            iconSize: 50.0,
          ),
          OutlinedButton(
            onPressed: _toggleDisplayTextButton, 
            child: Text("${_displayTextButton ? "Masquer" : "Afficher"} le bouton"),
          ),
          if (_displayTextButton)
            TextButton(
              onPressed: _plusButtonClicked,
              child: const Text("Click me"),
            ),
        ],
      ),
    );
  }
}