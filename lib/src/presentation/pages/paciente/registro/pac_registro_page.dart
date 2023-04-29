import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../utils/responsive.dart';
import '../../../../utils/theme/app_colors.dart';
import 'pac_registro_page_2.dart';

class PacRegistroPage extends StatelessWidget {
  const PacRegistroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.instance(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro de Paciente'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppLayoutConst.paddingXL),
          child: Column(
            children: [

              const Spacer(flex: 1),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Datos Personales', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18))
              ),
              const SizedBox(height: AppLayoutConst.spaceL),
              Container(
                padding: const EdgeInsets.all(40),
                decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                child: const FaIcon(size: 60, FontAwesomeIcons.userLarge, color: Colors.black),
              ),

              const Spacer(flex: 2),
              TextFormField(
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.primaryBlue.withOpacity(0.8))),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.primaryBlue.withOpacity(0.8))),
                    labelText: 'Nombre'
                ),
                onChanged: (_) {},
              ),
              const SizedBox(height: AppLayoutConst.spaceL),
              TextFormField(
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.primaryBlue.withOpacity(0.8))),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.primaryBlue.withOpacity(0.8))),
                    labelText: 'Telefono'
                ),
                onChanged: (_) {},
              ),
              const SizedBox(height: AppLayoutConst.spaceL),
              TextFormField(
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.primaryBlue.withOpacity(0.8))),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.primaryBlue.withOpacity(0.8))),
                    labelText: 'Cédula'
                ),
                onChanged: (_) {},
              ),

              const Spacer(flex: 3),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PacRegistro2Page()));
                  },
                  style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(16.0)),
                  child: const Text('Siguiente'),
                ),
              ),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
