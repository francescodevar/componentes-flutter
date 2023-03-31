import 'package:flutter/material.dart';

class ListView1Screenejemplo extends StatelessWidget {
  const ListView1Screenejemplo({Key? key}) : super(key: key);

  final options = const ['Megaman', 'Metal', 'Smash', 'fantasy'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("mueve el culo"),
      ),
      body: ListView(
        children: [
          ...options.map((game) => ListTile(
                title: Text(game),
                trailing: const Icon(Icons.arrow_right_alt_sharp),
              ))
        ],
      ),
    );
  }
}
