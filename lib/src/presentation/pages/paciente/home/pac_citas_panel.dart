import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:citas_med_app/src/utils/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PacCitasPanel extends StatelessWidget {
  const PacCitasPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppLayoutConst.paddingL),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(height: AppLayoutConst.spaceL),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Hola, Kevin!',
                style: Theme.of(context).textTheme.headline3,
              )),
          const SizedBox(height: AppLayoutConst.spaceL),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Estas son tus citas pendientes',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),

          const SizedBox(height: AppLayoutConst.marginL),
          Expanded(

            child: ListView.separated(
              itemCount: 1,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) => ListTile(
                onTap: () {
                  // showDialog(
                  //   context: context,
                  //   builder: (context) {
                  //     return AlertDialogCustom(
                  //       title: 'Creación de Cuenta',
                  //       content:
                  //           'Su proceso de creación pasara por una verificación de su número de licencia médica',
                  //       onPressed: () {
                  //         Navigator.pop(context);
                  //       },
                  //       canelbutton: true,
                  //     );
                  //   },
                  // );
                },

                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          'Dra. Ana',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 120),
                        Text(
                          '15:00',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Gastroenterologa',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),

                    SizedBox(height: 5),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            // Aquí puedes agregar la acción que se ejecutará cuando se haga clic en el enlace
                          },
                          child: Text(
                            'Ver ubicación',
                            style: TextStyle(
                              color: AppColors.primaryBlue,
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        SizedBox(width: 100),
                        InkWell(
                          onTap: () {
                            // Aquí puedes agregar la acción que se ejecutará cuando se haga clic en el enlace
                          },
                          child: Text(
                            'Cancelar cita',
                            style: TextStyle(
                              color: AppColors.primaryBlue,
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],

                    )
                  ],
                ),

                leading: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primaryBlue,
                  ),
                  child: const FaIcon(
                    FontAwesomeIcons.userDoctor,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


