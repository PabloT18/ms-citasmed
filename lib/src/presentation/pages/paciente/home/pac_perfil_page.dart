import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PacPerfilPacientePage extends StatelessWidget {
  const PacPerfilPacientePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paciente'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppLayoutConst.paddingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: AppLayoutConst.spaceL),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(40),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey),
              child: const FaIcon(
                  size: 60, FontAwesomeIcons.userLarge, color: Colors.black),
            ),
            const SizedBox(height: AppLayoutConst.spaceXL),
            const Text('0105778234'),
            const Text(
              'Juan Perez',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const Text('Telefono: 0985698569'),
            const SizedBox(height: AppLayoutConst.spaceL),
            const Divider(),
            const SizedBox(height: AppLayoutConst.spaceL),
            const Text(
              'Historico de Citas',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppLayoutConst.spaceM),
            ListTile(
              leading: Image.network(
                  'https://www.hospitalmontesinai.org/portals/0/LogoSinai.png',
                  height: 12),
              title: const Text('Clínica Monte Sinaí',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('20/05/2023'),
                  Text('12:00'),
                ],
              ),
            ),
            const SizedBox(height: AppLayoutConst.spaceM),
            const Divider(),
            ListTile(
              leading: Image.network(
                  'https://www.hospitalmontesinai.org/portals/0/LogoSinai.png',
                  height: 12),
              title: const Text('Clínica Monte Sinaí',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('20/05/2023'),
                  Text('12:00'),
                ],
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
