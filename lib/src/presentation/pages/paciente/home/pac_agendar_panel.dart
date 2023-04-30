import 'package:citas_med_app/src/presentation/pages/paciente/home/especialidad_button.dart';
import 'package:citas_med_app/src/presentation/pages/paciente/home/horario_button.dart';
import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:citas_med_app/src/utils/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../utils/router/app_router.dart';

class PacAgendarCita extends StatelessWidget {
  const PacAgendarCita({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _isEnabled = false;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kevin'),
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            crossAxisAlignment: WrapCrossAlignment.start,
            alignment: WrapAlignment.start,
            children: [
              HorarioButton(
                  title: '15:00',
                  color: AppColors.primaryBlue,
                  colorIcono: Color.fromARGB(255, 255, 255, 255)),
              HorarioButton(
                  title: '16:00',
                  color: Color.fromARGB(255, 255, 255, 255),
                  colorIcono: AppColors.primaryBlue),
              HorarioButton(
                  title: '17:00',
                  color: Colors.grey,
                  colorIcono: Color.fromARGB(255, 255, 255, 255)),
              HorarioButton(
                  title: '15:30',
                  color: Color.fromARGB(255, 255, 255, 255),
                  colorIcono: AppColors.primaryBlue),
              HorarioButton(
                  title: '16:30',
                  color: Colors.grey,
                  colorIcono: Color.fromARGB(255, 255, 255, 255)),
              HorarioButton(
                  title: '17:30',
                  color: Color.fromARGB(255, 255, 255, 255),
                  colorIcono: AppColors.primaryBlue),
            ],
          ),
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
                    'La cita es para alguien más?',
                  )),
              FaIcon(FontAwesomeIcons.toggleOn,
                  size: 25, color: AppColors.primaryBlue),
            ],
          ),
          const SizedBox(height: 10),
          Divider(
            color: Color.fromRGBO(230, 230, 230, 0.5),
            thickness: 2,
          ),
          Spacer(),
          SizedBox(
            width: double.maxFinite,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.pacSeleccionarMedioPago);
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
    );
  }
}
