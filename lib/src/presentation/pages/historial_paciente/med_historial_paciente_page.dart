import 'package:citas_med_app/src/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HistorialPacientePage extends StatelessWidget {
  const HistorialPacientePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paciente'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primaryBlue,
            ),
            child: const FaIcon(
              FontAwesomeIcons.userLarge,
              color: Colors.white,
            ),
          ),
          const Center(
            child: Text('Hola Mundo HistorialPacientePage'),
          ),
        ],
      ),
    );
  }
}
