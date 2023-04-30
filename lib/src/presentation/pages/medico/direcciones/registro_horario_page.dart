import 'package:citas_med_app/src/presentation/pages/medico/direcciones/checkbox_custom.dart';
import 'package:citas_med_app/src/presentation/widgets/alert_fialog_custom.dart';
import 'package:citas_med_app/src/utils/router/app_router.dart';
import 'package:flutter/material.dart';

import '../../../../utils/responsive.dart';
import '../../../../utils/theme/app_colors.dart';

class MedRegsitroHorarioPage extends StatelessWidget {
  const MedRegsitroHorarioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.instance(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro de direcion'),
      ),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: AppLayoutConst.paddingXL),
        child: Column(
          children: [
            const SizedBox(
              height: AppLayoutConst.spaceL,
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text('Escoje el horario',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18))),
            const SizedBox(height: 20),
            Row(
              children: const [
                SizedBox(
                  width: 150,
                  child: CheckBoxCustom(
                    title: '8:00',
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: CheckBoxCustom(
                    title: '9:00',
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  width: 150, // especifica un ancho fijo para el contenedor
                  child: CheckBoxCustom(
                    title: '10:00',
                  ),
                ),
                SizedBox(
                  width: 150, // especifica un ancho fijo para el contenedor
                  child: CheckBoxCustom(
                    title: '11:00',
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  width: 150, // especifica un ancho fijo para el contenedor
                  child: CheckBoxCustom(
                    title: '12:00',
                  ),
                ),
                SizedBox(
                  width: 150, // especifica un ancho fijo para el contenedor
                  child: CheckBoxCustom(
                    title: '13:00',
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  width: 150, // especifica un ancho fijo para el contenedor
                  child: CheckBoxCustom(
                    title: '14:00',
                  ),
                ),
                SizedBox(
                  width: 150, // especifica un ancho fijo para el contenedor
                  child: CheckBoxCustom(
                    title: '15:00',
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  width: 150, // especifica un ancho fijo para el contenedor
                  child: CheckBoxCustom(
                    title: '16:00',
                  ),
                ),
                SizedBox(
                  width: 150, // especifica un ancho fijo para el contenedor
                  child: CheckBoxCustom(
                    title: '17:00',
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  width: 150, // especifica un ancho fijo para el contenedor
                  child: CheckBoxCustom(
                    title: '18:00',
                  ),
                ),
                SizedBox(
                  width: 150, // especifica un ancho fijo para el contenedor
                  child: CheckBoxCustom(
                    title: '19:00',
                  ),
                ),
              ],
            ),
            const Spacer(),
            TextFormField(
              // textCapitalization: TextCapitalization.sentences,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColors.primaryBlue.withOpacity(0.8))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColors.primaryBlue.withOpacity(0.8))),
                  labelText: 'Precio Consulta'),
              onChanged: (_) {},
            ),
            const SizedBox(height: AppLayoutConst.spaceXL),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.pushNamed(context, AppRoutes.);
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialogCustom(
                        title: 'Nueva Dirección',
                        content:
                            'Se ha agregado una nueva direccion en sus consultorios',
                        onPressed: () {
                          Navigator.of(context).popUntil((route) =>
                              route.settings.name ==
                              AppRoutes.docDirrecionesPage);
                        }),
                  );
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16.0)),
                child: const Text('Finalizar'),
              ),
            ),
            const SizedBox(
              height: AppLayoutConst.spaceM,
            ),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).popUntil((route) =>
                      route.settings.name == AppRoutes.docDirrecionesPage);
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
