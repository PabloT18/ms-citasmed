import 'package:citas_med_app/src/presentation/widgets/logo.dart';
import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:citas_med_app/src/utils/router/app_router.dart';
import 'package:citas_med_app/src/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.instance(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppLayoutConst.paddingXL),
          child: Column(
            children: [
              const Spacer(flex: 1),
              const LogoApp(),
              const Spacer(flex: 2),
              TextFormField(
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColors.primaryBlue.withOpacity(0.8)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColors.primaryBlue.withOpacity(0.8)),
                  ),
                  labelText: 'Nombre',
                  hintText: 'Juan Perez',
                ),
                onChanged: (_) {},
              ),
              const SizedBox(
                height: AppLayoutConst.spaceL,
              ),
              TextFormField(
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColors.primaryBlue.withOpacity(0.8)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColors.primaryBlue.withOpacity(0.8)),
                  ),
                  labelText: 'Contraseña',
                  hintText: 'xxxxxx',
                ),
                onChanged: (_) {},
              ),
              const Spacer(flex: 1),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(AppRoutes.docHomePage);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(
                        16.0), // Personaliza el espacio de relleno del botón
                  ),
                  child: const Text('Ingresar como medico'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(AppRoutes.pacHomePage);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(
                        16.0), // Personaliza el espacio de relleno del botón
                  ),
                  child: const Text('Ingresar como paciente'),
                ),
              ),
              const SizedBox(height: AppLayoutConst.spaceXL),
              const Divider(),
              const SizedBox(height: AppLayoutConst.spaceXL),
              RedesSocialesButtons(responsive: responsive),
              const Spacer(flex: 3),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, AppRoutes.loadingPage);
                },
                child: const Text('Registrate!'),
              ),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}

class RedesSocialesButtons extends StatelessWidget {
  const RedesSocialesButtons({
    Key? key,
    required this.responsive,
  }) : super(key: key);

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            minimumSize: Size(responsive.hp(6), responsive.hp(6)),
            padding: const EdgeInsets.all(
                16.0), // Personaliza el espacio de relleno del botón
          ),
          child: const FaIcon(
            FontAwesomeIcons.facebookF,
            size: 20,

            // size: responsive.hp(10),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            minimumSize: Size(responsive.hp(6), responsive.hp(6)),
            padding: const EdgeInsets.all(
                16.0), // Personaliza el espacio de relleno del botón
          ),
          child: const FaIcon(
            FontAwesomeIcons.twitter,
            size: 20,

            // size: responsive.hp(10),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            minimumSize: Size(responsive.hp(6), responsive.hp(6)),
            padding: const EdgeInsets.all(
                16.0), // Personaliza el espacio de relleno del botón
          ),
          child: const FaIcon(
            FontAwesomeIcons.apple,
            size: 20,

            // size: responsive.hp(10),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            minimumSize: Size(responsive.hp(6), responsive.hp(6)),
            padding: const EdgeInsets.all(
                16.0), // Personaliza el espacio de relleno del botón
          ),
          child: const FaIcon(
            FontAwesomeIcons.google,
            size: 20,
            // size: responsive.hp(10),
          ),
        ),
      ],
    );
  }
}
