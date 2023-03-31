import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined),
            title: Text("Hola, soy un titulo"),
            subtitle: Text("Soy un subtitulo"),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text("cancel")),
                TextButton(onPressed: () {}, child: const Text("Ok")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
