import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PacRecetasPanel extends StatelessWidget {
  const PacRecetasPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recetas'),
      ),
      body: const Center(
        child: Text('Recetas'),
      ),
    );
  }
}