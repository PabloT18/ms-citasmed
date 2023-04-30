import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:citas_med_app/src/utils/router/app_router.dart';
import 'package:citas_med_app/src/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PacDoctorPage extends StatelessWidget {
  const PacDoctorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isEnabled = false;
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
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(40),
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(230, 230, 230, 1)),
            alignment: Alignment.center,
            child: const FaIcon(
                size: 40,
                FontAwesomeIcons.userDoctor,
                color: AppColors.primaryBlue),
          ),
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
                    Text(
                      'online',
                      style: TextStyle(
                        color: AppColors.primaryBlue,
                        fontSize: 12,
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
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Localidades',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => const PacAgendarCitaPage()),
              // )
              //;
              Navigator.pushNamed(
                  context,
                  AppRoutes
                      .pacAgendarCita); // Aquí puedes añadir la acción que quieres que se realice al presionar el container
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.primaryBlue, width: 2),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: <Widget>[
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
                        SizedBox(height: 5),
                        Text('Clínica Monte Sinaí',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                      ],
                    ),
                    subtitle: const Text('Miguel Cordero Dávila 6-140'),
                    trailing: const Text('\$40',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: const [
                        Text('08:00 - 10:00 ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.primaryBlue, width: 2),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Image.network(
                      'https://www.hospitaldelrio.com.ec/placeholders/logo.png',
                      height: 24),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      FittedBox(
                        child: Text('Consulta de gastroenterología',
                            maxLines: 1,
                            style: TextStyle(fontWeight: FontWeight.normal)),
                      ),
                      SizedBox(height: 5),
                      Text('Hospital del rio',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                    ],
                  ),
                  subtitle: const Text('Av. 24 de mayo'),
                  trailing: const Text('\$35',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: const [
                      Text('15:00 - 18:00 ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ]),
      ),
    );
  }
}
