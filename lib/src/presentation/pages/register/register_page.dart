import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:citas_med_app/src/presentation/widgets/logo.dart';
import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:citas_med_app/src/utils/router/app_router.dart';
import 'package:citas_med_app/src/utils/theme/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.instance(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 1),
            const LogoApp(),
            const Spacer(
              flex: 2,
            ),
            const Text('¿Como quieres usar tu cuenta?'),
            const Spacer(
              flex: 2,
            ),

            ZoomIn(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.medregisterPage);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(
                          40.0), // Personaliza el espacio de relleno del botón
                      decoration: const BoxDecoration(
                        color: AppColors.primaryBlue,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.userDoctor,
                          color: Colors.white,
                          size: 100,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppLayoutConst.spaceM,
                  ),
                  Text(
                    'Médico',
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: AppColors.primaryBlue),
                  )
                ],
              ),
            ),
            const Spacer(flex: 1),
            // ButtonUser(
            //   onpress: () {
            //     Navigator.pushNamed(context, AppRoutes.pacregisterPage);
            //   },
            //   responsive: responsive,
            //   icon: FontAwesomeIcons.userLarge,
            //   title: 'Paciente',
            // ),

            ZoomIn(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.pacregisterPage);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(
                          40.0), // Personaliza el espacio de relleno del botón
                      decoration: const BoxDecoration(
                        color: AppColors.primaryBlue,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.userLarge,
                          color: Colors.white,
                          size: 100,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppLayoutConst.spaceM,
                  ),
                  Text(
                    'Paciente',
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: AppColors.primaryBlue),
                  )
                ],
              ),
            ),
            const Spacer(
              flex: 3,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, AppRoutes.loginPage);
              },
              child: const Text('Ya tienes una cuenta?'),
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
