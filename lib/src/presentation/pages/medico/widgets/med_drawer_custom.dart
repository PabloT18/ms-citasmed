import 'package:citas_med_app/src/presentation/widgets/logo.dart';
import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:flutter/material.dart';

class MedDrawerCustom extends StatelessWidget {
  const MedDrawerCustom({Key? key, required this.ontap}) : super(key: key);

  final ValueChanged<int>? ontap;

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.instance(context);

    return Drawer(
      child: Column(children: [
        UserAccountsDrawerHeader(
          arrowColor: Colors.red,
          currentAccountPicture: const LogoApp(),
          currentAccountPictureSize: Size(responsive.wp(80), 100),
          accountEmail: const Text(
            'ana@mail.com',
            style: TextStyle(color: Colors.black),
          ),
          accountName: const Text(
            'Pablo',
            style: TextStyle(color: Colors.black),
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
        // Container(
        //   color: Colors.red,
        //   height: 100,
        //   width: 10,
        // ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                ),
                title: const Text('Citas'),
                onTap: () {
                  //Misma funcion que cuando se da clic en el boton de BottomNavigationBar
                  ontap!(0);
                  //Navigator.pop sirve para cerrar el Drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                ),
                title: const Text('Pacientes'),
                onTap: () {
                  //Misma funcion que cuando se da clic en el boton de BottomNavigationBar
                  ontap!(1);
                  //Navigator.pop sirve para cerrar el Drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                ),
                title: const Text('Chat'),
                onTap: () {
                  //Misma funcion que cuando se da clic en el boton de BottomNavigationBar
                  ontap!(2);
                  //Navigator.pop sirve para cerrar el Drawer
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: AppLayoutConst.spaceM),
              const Divider(),
              const SizedBox(height: AppLayoutConst.spaceM),
              ListTile(
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                ),
                title: const Text('Direccions'),
                onTap: () {},
              ),
              ListTile(
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                ),
                title: const Text('Cuentas / Cobros'),
                onTap: () {},
              ),
              const SizedBox(height: AppLayoutConst.spaceM),
              const Divider(),
              const SizedBox(height: AppLayoutConst.spaceM),
              ListTile(
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                ),
                title: const Text('Mi Perfil'),
                onTap: () {
                  print('object');
                },
              ),
              ListTile(
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                ),
                title: const Text('Cerrar Sesion'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ]
          //   Padding(
          //     padding: const EdgeInsets.symmetric(
          //         horizontal: AppLayoutConst.paddingL),
          //     child: Column(
          //       children: [
          //         Container(
          //           color: Colors.red,
          //           child: ListTile(

          //         ),
          //       ],
          //     ),
          //   ),
          // ],
          ),
    );
  }
}
