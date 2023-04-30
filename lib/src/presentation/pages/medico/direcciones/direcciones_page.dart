import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:citas_med_app/src/utils/router/app_router.dart';
import 'package:flutter/material.dart';

class DirecionesPage extends StatelessWidget {
  const DirecionesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Direcciones '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppLayoutConst.paddingL),
        child: Column(
          children: [
            Card(
              elevation: 8,
              child: ListTile(
                leading: Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.network(
                      'https://www.hospitalmontesinai.org/portals/0/LogoSinai.png',
                      height: 12),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    FittedBox(
                      child: Text('Consulta de gastroenterología',
                          maxLines: 1,
                          style: TextStyle(fontWeight: FontWeight.normal)),
                    ),
                    Text('Clínica Monte Sinaí',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('  Horario',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                subtitle: Column(
                  children: const [
                    Text('8:00 - 12:00'),
                    Text('8:00 - 12:00'),
                  ],
                ),
                trailing: const Text('\$40',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(AppRoutes.docDirrecionesRegistroPage);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(
                      16.0), // Personaliza el espacio de relleno del botón
                ),
                child: const Text('Agrenar nueva direcion o consultorio'),
              ),
            ),
            const SizedBox(
              height: AppLayoutConst.spaceXL,
            )
          ],
        ),
      ),
    );
  }
}
