import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:citas_med_app/src/utils/router/app_router.dart';
import 'package:flutter/material.dart';

class CobrosPage extends StatelessWidget {
  const CobrosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cobros '),
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
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Banco_Pichincha_nuevo.png/800px-Banco_Pichincha_nuevo.png',
                      height: 12),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    FittedBox(
                      child: Text('Cuenta Corriente',
                          maxLines: 1,
                          style: TextStyle(fontWeight: FontWeight.normal)),
                    ),
                    Text('Banco Pichincha',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Numero de cuenta: 172832043',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 8,
              child: ListTile(
                leading: Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Banco_Pichincha_nuevo.png/800px-Banco_Pichincha_nuevo.png',
                      height: 12),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    FittedBox(
                      child: Text('Cuenta Ahorros',
                          maxLines: 1,
                          style: TextStyle(fontWeight: FontWeight.normal)),
                    ),
                    Text('Banco Pichincha',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Numero de cuenta: 38832432',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(AppRoutes.docCobrosRegistroPage);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(
                      16.0), // Personaliza el espacio de relleno del botón
                ),
                child: const Text('Agrenar nueva cuenta'),
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
