import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:flutter/material.dart';

class MedRegistroPage extends StatelessWidget {
  const MedRegistroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro de Medico'),
      ),
      body: Column(
        children: const [
          SizedBox(
            height: AppLayoutConst.spaceL,
          ),
          Text('Datos Personales'),
          Center(
            child: Text('Hola Mundo RegistroPage'),
          ),
        ],
      ),
    );
  }
}
