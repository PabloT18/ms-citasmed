import 'package:citas_med_app/src/presentation/pages/register/register_vincular_cuenta.dart';
import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:citas_med_app/src/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MedRegistroPage2 extends StatelessWidget {
  const MedRegistroPage2({Key? key}) : super(key: key);

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
                  child: Text('Datos Específicos',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18))),
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
                    labelText: 'Número de licencia médica'),
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
                    labelText: 'Email'),
                onChanged: (_) {},
              ),
              const SizedBox(height: AppLayoutConst.spaceL),
              TextFormField(
                textCapitalization: TextCapitalization.sentences,
                obscureText: true,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColors.primaryBlue.withOpacity(0.8))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColors.primaryBlue.withOpacity(0.8))),
                  labelText: 'Contraseña',
                ),
                onChanged: (_) {},
              ),
              const SizedBox(height: AppLayoutConst.spaceL),
              TextFormField(
                textCapitalization: TextCapitalization.sentences,
                obscureText: true,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.primaryBlue.withOpacity(0.8))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.primaryBlue.withOpacity(0.8))),
                    labelText: 'Repite la Contraseña'),
                onChanged: (_) {},
              ),
              const Spacer(flex: 3),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Creación de cuenta'),
                          content: const Text(
                              'Su proceso de creación pasara por una verificación de su número de licencia médica'),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text('Creación de cuenta'),
                                        content: const Text(
                                            'Licencia verificada con éxito usuario creado exitosamente'),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const RegistroVincularCuentaPage()));
                                            },
                                            child: const Text('Aceptar'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: const Text('Aceptar')),
                          ],
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16.0)),
                  child: const Text('Crear Cuenta'),
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
