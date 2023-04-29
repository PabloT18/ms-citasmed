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
              itemBuilder: (context, index) => ListTile(
                onTap: () {},
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
                                return Container(
                                  color: Colors.white,
                                  height: 100,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: Image.network(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR15Bq5OZHXfINl34Ldh_C1z-JzEh8KxEZANg&usqp=CAU',
                                    fit: BoxFit.fill,
                                  ),
                                );
                              },
                            );
                          },
                          child: const Text(
                            'Ver ubicación',
                            style: TextStyle(
                              color: AppColors.primaryBlue,
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
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
