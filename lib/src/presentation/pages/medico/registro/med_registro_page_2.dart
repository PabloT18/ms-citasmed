import 'package:citas_med_app/src/presentation/widgets/alert_fialog_custom.dart';
import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:citas_med_app/src/utils/router/app_router.dart';
import 'package:citas_med_app/src/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';

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
                        return AlertDialogCustom(
                          title: 'Creación de cuenta',
                          content:
                              'Su proceso de creación pasara por una verificación de su número de licencia médica',
                          onPressed: () {
                            Navigator.of(context).pop();
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialogCustom(
                                  title: 'Creación de cuenta',
                                  content:
                                      'Licencia verificada con éxito usuario creado exitosamente',
                                  onPressed: () {
                                    Navigator.of(context).pop();

                                    Navigator.pushNamed(context,
                                        AppRoutes.registerVincularCuentasPage);
                                  },
                                );
                              },
                            );
                          },
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
