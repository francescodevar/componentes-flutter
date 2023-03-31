import 'package:flutter/material.dart';
import 'package:flutter_/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("card widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
              imageUrl: 'https://images7.alphacoders.com/600/600922.jpg'),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
              imageUrl: "https://images7.alphacoders.com/493/493639.jpg"),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            name: "Dark Souls",
            imageUrl: "https://images4.alphacoders.com/695/695524.jpg",
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
