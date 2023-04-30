import 'package:citas_med_app/src/presentation/pages/paciente/home/especialidad_button.dart';
import 'package:citas_med_app/src/presentation/pages/paciente/widgets/switchAction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:citas_med_app/src/utils/theme/app_colors.dart';

import '../../../widgets/alert_fialog_custom.dart';
import '../widgets/buttonIcons.dart';
import 'horario_button.dart';

class PacElegirMedioPago extends StatefulWidget {
  const PacElegirMedioPago({
    Key? key,
  }) : super(key: key);

  @override
  State<PacElegirMedioPago> createState() => _PacElegirMedioPagoState();
}

class _PacElegirMedioPagoState extends State<PacElegirMedioPago> {
  bool _isEnabled = false;
  void changeVisibilityPay() {
    setState(() {
      _isEnabled = !_isEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    // const size = Size(140, 40);
    // return Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: AppLayoutConst.paddingL),
    // );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Seleccionar medio de pago'),
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
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    '0103767661',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Dra. Ana',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
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
                  const SizedBox(height: 5),
                  Text('Clínica Monte Sinaí',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
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
              children: [
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
            Divider(
              color: Color.fromRGBO(230, 230, 230, 0.5),
              thickness: 2,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Pagar en el consultorio?',
                    )),
                SwitchActionCustom(onChangeTap: changeVisibilityPay),
                // Column(
                //   children: [SwitchActionCustom()],
                //   // children: [
                //   //   Switch(
                //   //     value: isSwitched,
                //   //     onChanged: (value) {
                //   //       isSwitched = value;
                //   //       _isEnabled = !_isEnabled;
                //   //     },
                //   //     activeTrackColor: AppColors.primaryBlue,
                //   //     activeColor: AppColors.primaryBlue,
                //   //   ),
                //   // ],
                // )
                // FaIcon(FontAwesomeIcons.toggleOff,
                //     size: 25, color: AppColors.btnBackgroundDisabled),
              ],
            ),
            const SizedBox(height: 10),
            Divider(
              color: Color.fromRGBO(230, 230, 230, 0.5),
              thickness: 2,
            ),
            const SizedBox(height: 25),

            // Tarjeta
            // Visibility(child: Text('Hola'), visible: _isEnabled),
            if (!_isEnabled) ...[
              const SizedBox(
                  child: Text(
                'Tarjeta',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // spacing: 5,
                    // alignment: WrapAlignment.center,
                    SizedBox(
                        width: double.maxFinite,
                        child: ButtonIcons(
                          title: 'Payphone',
                          icon: FontAwesomeIcons.phoneAlt,
                          isActive: false,
                        )),

                    SizedBox(
                        width: double.maxFinite,
                        child: ButtonIcons(
                          title: 'Tarjeta Credito / Debito',
                          icon: FontAwesomeIcons.creditCard,
                          isActive: true,
                        )),
                  ],
                ),
              ),
            ],

            //End Tarjeta
            // Spacer(),
            if (_isEnabled)
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialogCustom(
                          title: 'Cita agendada',
                          content: 'Puede revisar en su agenda',
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          canelbutton: false,
                        );
                      },
                    );
                  },
                  // Navigator.pushNamed(context, AppRoutes.pacSeleccionarMedioPago);
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
