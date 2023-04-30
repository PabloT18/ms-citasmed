import 'package:citas_med_app/src/presentation/widgets/alert_fialog_custom.dart';
import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:citas_med_app/src/utils/router/app_router.dart';
import 'package:flutter/material.dart';

import '../../../../utils/theme/app_colors.dart';

class RegistrarCuentaCobroPage extends StatelessWidget {
  const RegistrarCuentaCobroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar Cuenta '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppLayoutConst.paddingL),
        child: Column(
          children: [
            const SizedBox(height: AppLayoutConst.spaceL),
            TextFormField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.primaryBlue.withOpacity(0.8)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.primaryBlue.withOpacity(0.8)),
                ),
                labelText: 'Banco',
              ),
              onChanged: (_) {},
            ),
            const SizedBox(height: AppLayoutConst.spaceM),
            TextFormField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.primaryBlue.withOpacity(0.8)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.primaryBlue.withOpacity(0.8)),
                ),
                labelText: 'Tipo de cuenta',
              ),
              onChanged: (_) {},
            ),
            const SizedBox(height: AppLayoutConst.spaceM),
            TextFormField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.primaryBlue.withOpacity(0.8)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.primaryBlue.withOpacity(0.8)),
                ),
                labelText: 'Numero de cuenta',
              ),
              onChanged: (_) {},
            ),
            const Spacer(),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialogCustom(
                        title: 'Creación de cuenta bancaria',
                        content: 'Cuenta bancaria creada correctamente',
                        onPressed: () {
                          Navigator.of(context).popUntil((route) =>
                              route.settings.name == AppRoutes.docCobrosPage);
                        }),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(
                      16.0), // Personaliza el espacio de relleno del botón
                ),
                child: const Text('Agrenar cuenta'),
              ),
            ),
            const SizedBox(
              height: AppLayoutConst.spaceM,
            ),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.all(16.0)),
                child: const Text(
                  'Cancelar',
                  style: TextStyle(color: AppColors.primaryBlue),
                ),
              ),
            ),
            const SizedBox(
              height: AppLayoutConst.spaceXL,
            ),
          ],
        ),
      ),
    );
  }
}
