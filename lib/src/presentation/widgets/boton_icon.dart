import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:citas_med_app/src/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonUser extends StatelessWidget {
  const ButtonUser({
    Key? key,
    required this.responsive,
    required this.icon,
    required this.title,
    required this.onpress,
  }) : super(key: key);

  final Responsive responsive;
  final IconData icon;
  final String title;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: onpress,
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
