import 'package:flutter/material.dart';

class InventairePage extends StatelessWidget {
  const InventairePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inventaire'),
      ),
      body: const Center(
        child: Text('Contenu de la page Inventaire'),
      ),
    );
  }
}
