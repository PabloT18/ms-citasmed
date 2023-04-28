import 'package:citas_med_app/src/presentation/widgets/boton_icon.dart';
import 'package:citas_med_app/src/presentation/widgets/logo.dart';
import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:citas_med_app/src/utils/router/app_router.dart';
import 'package:flutter/material.dart';
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
            ButtonUser(
              onpress: () {
                Navigator.pushNamed(context, AppRoutes.medregisterPage);
              },
              responsive: responsive,
              icon: FontAwesomeIcons.userDoctor,
              title: 'Médico',
            ),
            const Spacer(flex: 1),
            ButtonUser(
              onpress: () {
                Navigator.pushNamed(context, AppRoutes.pacregisterPage);
              },
              responsive: responsive,
              icon: FontAwesomeIcons.userLarge,
              title: 'Paciente',
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
