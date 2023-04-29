import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/router/app_router.dart';
import '../../../utils/theme/app_colors.dart';
import '../../widgets/logo.dart';

class RegistroVincularCuentaPage extends StatelessWidget {
  const RegistroVincularCuentaPage({Key? key}) : super(key: key);

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
              const SizedBox(height: AppLayoutConst.spaceXL),
              const Align(
                  alignment: Alignment.center,
                  child: Text('Vincula tu cuenta con tus redes sociales',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18))),
              const Spacer(flex: 2),
              SizedBox(
                width: double.maxFinite,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.facebook),
                  label: const Text('Facebook'),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(AppColors.primaryBlue),
                    // iconColor: MaterialStateProperty.all<Color>(AppColors.primaryBlue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(
                                color: AppColors.primaryBlue))),
                  ),
                ),
              ),
              const SizedBox(height: AppLayoutConst.spaceL),
              SizedBox(
                width: double.maxFinite,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.apple),
                  label: const Text('Apple ID'),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(AppColors.primaryBlue),

                    // iconColor: MaterialStateProperty.all<Color>(AppColors.primaryBlue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(
                                color: AppColors.primaryBlue))),
                  ),
                ),
              ),
              const SizedBox(height: AppLayoutConst.spaceL),
              SizedBox(
                width: double.maxFinite,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.google),
                  label: const Text('Google'),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(AppColors.primaryBlue),
                    // iconColor: MaterialStateProperty.all<Color>(AppColors.primaryBlue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(
                                color: AppColors.primaryBlue))),
                  ),
                ),
              ),
              const SizedBox(height: AppLayoutConst.spaceL),
              SizedBox(
                width: double.maxFinite,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.twitter),
                  label: const Text('Twitter'),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(AppColors.primaryBlue),
                    // iconColor: MaterialStateProperty.all<Color>(AppColors.primaryBlue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(
                                color: AppColors.primaryBlue))),
                  ),
                ),
              ),
              const Spacer(flex: 3),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.loginPage);
                },
                child: const Text('Omitir'),
              ),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
