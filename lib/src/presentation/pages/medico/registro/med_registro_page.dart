import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:citas_med_app/src/utils/router/app_router.dart';
import 'package:citas_med_app/src/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MedRegistroPage extends StatelessWidget {
  const MedRegistroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.instance(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro de Medico'),
      ),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppLayoutConst.paddingXL),
          child: Column(
            children: [
              const Spacer(flex: 1),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Datos Personales',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18))),
              const SizedBox(height: AppLayoutConst.spaceL),
              Container(
                padding: const EdgeInsets.all(40),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey),
                child: const FaIcon(
                    size: 60, FontAwesomeIcons.userDoctor, color: Colors.black),
              ),
              const Spacer(flex: 2),
              TextFormField(
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.primaryBlue.withOpacity(0.8))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.primaryBlue.withOpacity(0.8))),
                    labelText: 'Nombre'),
                onChanged: (_) {},
              ),
              const SizedBox(height: AppLayoutConst.spaceL),
              TextFormField(
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.primaryBlue.withOpacity(0.8))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.primaryBlue.withOpacity(0.8))),
                    labelText: 'Dirección de Domicilio'),
                onChanged: (_) {},
              ),
              const SizedBox(height: AppLayoutConst.spaceL),
              TextFormField(
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.primaryBlue.withOpacity(0.8))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.primaryBlue.withOpacity(0.8))),
                    labelText: 'Telefono'),
                onChanged: (_) {},
              ),
              const SizedBox(height: AppLayoutConst.spaceL),
              TextFormField(
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.primaryBlue.withOpacity(0.8))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.primaryBlue.withOpacity(0.8))),
                    labelText: 'Cédula'),
                onChanged: (_) {},
              ),
              const Spacer(flex: 3),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const MedRegistroPage2()));
                    Navigator.pushNamed(context, AppRoutes.medregister2Page);
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16.0)),
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
