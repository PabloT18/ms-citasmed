import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DirecionesPage extends StatelessWidget {
  const DirecionesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paciente'),
      ),
      body: Column(
        children: const [
          Center(
            child: Text('Direcoines'),
          ),
        ],
      ),
    );
  }
}
