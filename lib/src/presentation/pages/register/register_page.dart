import 'package:citas_med_app/src/presentation/widgets/logo.dart';
import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:citas_med_app/src/utils/router/app_router.dart';
import 'package:citas_med_app/src/utils/theme/app_colors.dart';
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
            _ButtonUser(
              responsive: responsive,
              icon: FontAwesomeIcons.userDoctor,
              title: 'Médico',
            ),
            const Spacer(flex: 1),
            _ButtonUser(
              responsive: responsive,
              icon: FontAwesomeIcons.userLarge,
              title: 'Paciente',
            ),
            const Spacer(
              flex: 3,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.loginPage);
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

class _ButtonUser extends StatelessWidget {
  const _ButtonUser({
    Key? key,
    required this.responsive,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final Responsive responsive;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            minimumSize: Size(responsive.hp(20), responsive.hp(20)),
            padding: const EdgeInsets.all(
                16.0), // Personaliza el espacio de relleno del botón
          ),
          child: FaIcon(
            icon,
            size: responsive.hp(10),
          ),
        ),
        const SizedBox(
          height: AppLayoutConst.spaceM,
        ),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: AppColors.primaryBlue),
        )
      ],
    );
  }
}
