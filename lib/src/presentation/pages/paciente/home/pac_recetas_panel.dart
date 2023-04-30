import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:flutter/material.dart';

class PacRecetasPanel extends StatelessWidget {
  const PacRecetasPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...List<Widget>.generate(
              5,
              (index) => Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(AppLayoutConst.paddingL),
                      child: Row(
                        children: [
                          Image.network(
                              'https://www.hospitalmontesinai.org/portals/0/LogoSinai.png',
                              height: 12),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Receta 001'),
                              const Text(
                                'Dra. Ana ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                'Dosis:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Text('\t 1 Paracetamol cada 8 horas'),
                              const Text('\t 1 Loratadina cada 8 horas'),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: TextButton(
                                    onPressed: () {},
                                    child: const Text('Descargar Receta')),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
        ],
      ),
    );
  }
}
