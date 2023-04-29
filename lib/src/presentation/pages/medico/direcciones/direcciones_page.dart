import 'package:flutter/material.dart';

class DirecionesPage extends StatelessWidget {
  const DirecionesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Direcciones'),
      ),
      body: const Center(
        child: Text('Direcoines'),
      ),
    );
  }
}
