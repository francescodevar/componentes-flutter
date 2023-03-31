import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  final options = const ['Java', 'Javascript', 'Dart', 'PHP'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista sin acciones"),
      ),
      body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
                title: Text(options[index]),
                trailing: const Icon(Icons.arrow_forward_ios_sharp),
              ),
          separatorBuilder: (_, __) => const Divider()),
    );
  }
}
