import 'package:flutter/material.dart';

class CircleScreen extends StatelessWidget {
  const CircleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Yoda chiquito"),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.amber[900],
              child: const Text("YC"),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
            maxRadius: 110,
            backgroundImage: NetworkImage(
                "https://images.hdqwalls.com/wallpapers/bthumb/baby-yoda-3d-art-4k-6l.jpg")),
      ),
    );
  }
}
