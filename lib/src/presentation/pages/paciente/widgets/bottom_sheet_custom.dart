import 'package:citas_med_app/src/utils/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:citas_med_app/src/utils/theme/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomSheetCustom extends StatefulWidget {
  const BottomSheetCustom({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomSheetCustom> createState() => _BottomSheetCustomState();
}

class _BottomSheetCustomState extends State<BottomSheetCustom> {
  final int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            // color: Colors.grey.withOpacity(0.5),
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: SizedBox(
        height: 400.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: SizedBox(
                  height: 15,
                  width: 80,
                  child: Divider(color: AppColors.primaryBlue, thickness: 4)),
            ),
            const SizedBox(
              height: 10.0,
            ),

            ListTile(
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
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'DESTACADO',
                    style: TextStyle(
                      color: AppColors.primaryBlue,
                      fontSize: 12,
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
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      FaIcon(FontAwesomeIcons.solidStar,
                          size: 18, color: AppColors.primaryBlue),
                      FaIcon(FontAwesomeIcons.solidStar,
                          size: 18, color: AppColors.primaryBlue),
                      FaIcon(FontAwesomeIcons.solidStar,
                          size: 18, color: AppColors.primaryBlue),
                      FaIcon(FontAwesomeIcons.solidStar,
                          size: 18, color: AppColors.primaryBlue),
                      FaIcon(FontAwesomeIcons.starHalfStroke,
                          size: 18, color: AppColors.primaryBlue),
                      Text(
                        '371 opiniones',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 15.0,
              child: Divider(
                color: Color.fromARGB(255, 139, 139, 139),
                thickness: 1.0,
              ),
            ),
            // const SizedBox(height: 5.0),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     IconButton(
            //       icon: const Icon(Icons.favorite_border),
            //       onPressed: () {
            //         setState(() {
            //           _selectedIndex = 0;
            //         });
            //       },
            //     ),
            //     IconButton(
            //       icon: const Icon(Icons.chat_bubble_outline),
            //       onPressed: () {
            //         setState(() {
            //           _selectedIndex = 1;
            //         });
            //       },
            //     ),
            //     IconButton(
            //       icon: const Icon(Icons.share),
            //       onPressed: () {
            //         setState(() {
            //           _selectedIndex = 2;
            //         });
            //       },
            //     ),
            //   ],
            // ),
            Container(
              width: 400,
              // height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.primaryBlue,
                  width: 0,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              // child: Wrap(
              //   runSpacing: 0,
              //   spacing: 10,
              //   alignment: WrapAlignment.start,
              //   crossAxisAlignment: WrapCrossAlignment.start,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.zero,
                    ),
                    child: const Text(
                      'Dirección 1',
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.zero,
                    ),
                    child: const Text(
                      'Dirección 2',
                      style: TextStyle(
                          fontSize: 10.0, color: AppColors.primaryBlue),
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 20.0),
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
                  Text('Clínica Monte Sinaí',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              subtitle: const Text('Miguel Cordero Dávila'),
              trailing: const Text('\$40',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: const [
                  Text('Próxima fecha: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  Text('Jueves 20 abril'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('07:00'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('11:00'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('12:00'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('13:00'),
                ),
                TextButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, AppRoutes.pacAgendarCita);
                      Navigator.pushNamed(context, AppRoutes.pacDoctorPage);
                    },
                    child: Row(
                      children: const [
                        Text('Ver más'),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 12,
                        )
                      ],
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//Daniel Vega 29-04-2023