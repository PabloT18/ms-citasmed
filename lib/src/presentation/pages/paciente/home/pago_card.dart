import 'package:citas_med_app/src/utils/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:citas_med_app/src/utils/theme/app_colors.dart';

import '../../../widgets/alert_fialog_custom.dart';
import 'horario_button.dart';

class PagoCard extends StatelessWidget {
  const PagoCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pago de consulta'),
        actions: [
          IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const FaIcon(FontAwesomeIcons.solidCircleUser))
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: AppLayoutConst.paddingL),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 20),
                  Text(
                    '0103767661',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Dra. Ana',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Gastroenterologa',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: Image.network(
                  'https://www.hospitalmontesinai.org/portals/0/LogoSinai.png',
                  height: 12),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  FittedBox(
                    child: Text('Consulta de gastroenterología',
                        maxLines: 1,
                        style: TextStyle(fontWeight: FontWeight.normal)),
                  ),
                  SizedBox(height: 5),
                  Text('Clínica Monte Sinaí',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                ],
              ),
              subtitle: const Text('Miguel Cordero Dávila 6-140'),
              trailing: const Text('\$40',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 50,
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              children: const [
                Align(
                  alignment: Alignment.center,
                  child: HorarioButton(
                      title: '15:00',
                      color: AppColors.primaryBlue,
                      colorIcono: Color.fromARGB(255, 255, 255, 255)),
                )
              ],
            ),
            const SizedBox(height: 25),
            const SizedBox(
                child: Text(
              'Formas de Pago',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )),
            const SizedBox(height: 25),
            const Divider(
              color: Color.fromRGBO(230, 230, 230, 0.5),
              thickness: 2,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Pagar en el consultorio?',
                    )),
                FaIcon(FontAwesomeIcons.toggleOff,
                    size: 25, color: AppColors.btnBackgroundDisabled),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(
              color: Color.fromRGBO(230, 230, 230, 0.5),
              thickness: 2,
            ),
            const SizedBox(height: 25),
            const SizedBox(
                child: Text(
              'Tarjeta',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // spacing: 5,
                  // alignment: WrapAlignment.center,
                  const SizedBox(height: AppLayoutConst.spaceL),
                  TextFormField(
                    textCapitalization: TextCapitalization.sentences,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.primaryBlue.withOpacity(0.8)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.primaryBlue.withOpacity(0.8)),
                      ),
                      labelText: 'Nombre de la tarjeta',
                      hintText: 'Ana',
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
                        borderSide: BorderSide(
                            color: AppColors.primaryBlue.withOpacity(0.8)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.primaryBlue.withOpacity(0.8)),
                      ),
                      labelText: 'Número de la tarjeta',
                      hintText: '8197******9661',
                    ),
                    onChanged: (_) {},
                  ),
                  const SizedBox(height: AppLayoutConst.spaceM),

                  Container(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        width: 60,
                        child: TextFormField(
                          textCapitalization: TextCapitalization.sentences,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color:
                                      AppColors.primaryBlue.withOpacity(0.8)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color:
                                      AppColors.primaryBlue.withOpacity(0.8)),
                            ),
                            labelText: 'CVV',
                            hintText: 'xxx',
                            isDense: true,
                          ),
                          maxLength: 3,
                          keyboardType: TextInputType.number,
                          onChanged: (_) {},
                        ),
                      ))
                ],
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialogCustom(
                        title: 'Cita agendada',
                        content: 'Su pago se ha realizado con éxito',
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pushNamedAndRemoveUntil(
                              context, AppRoutes.pacHomePage, (route) => false);
                        },
                        canelbutton: false,
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(
                      16.0), // Personaliza el espacio de relleno del botón
                ),
                child: const Text('Agendar Cita'),
              ),
            ),
            const SizedBox(height: 20),
          ]),
        ),
      ),
    );
  }
}
