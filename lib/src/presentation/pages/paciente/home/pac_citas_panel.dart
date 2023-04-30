import 'package:animate_do/animate_do.dart';
import 'package:citas_med_app/src/presentation/widgets/alert_fialog_custom.dart';
import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:citas_med_app/src/utils/theme/app_colors.dart';
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
          const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Estas son tus citas pendientes',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          const SizedBox(height: AppLayoutConst.marginL),
          Expanded(
            child: ListView.separated(
              itemCount: 5,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) => FadeInRight(
                child: Card(
                  elevation: 2,
                  child: ListTile(
                    onTap: null,
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Dra. Ana',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // SizedBox(width: 120),
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
                        const SizedBox(height: 5),
                        const Text(
                          'Gastroenterologa',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      contentPadding: const EdgeInsets.all(2),
                                      content: Image.asset(
                                          'lib/src/assets/images/googlemap.jpg'),
                                      actions: [
                                        TextButton(
                                            onPressed: () {},
                                            child: const Text(
                                                'Abre en Google Maps'))
                                      ],
                                    );
                                  },
                                );
                              },
                              child: const Text(
                                'Ver ubicación',
                                style: TextStyle(
                                  color: AppColors.primaryBlue,
                                  fontSize: 14,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialogCustom(
                                        title: 'Canclecion de cita',
                                        canelbutton: true,
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        content:
                                            'Seguro que desea cancelar la cita?');
                                  },
                                );
                              },
                              child: const Text(
                                'Cancelar cita',
                                style: TextStyle(
                                  color: AppColors.primaryBlue,
                                  fontSize: 14,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
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
              ),
            ),
          )
        ],
      ),
    );
  }
}
