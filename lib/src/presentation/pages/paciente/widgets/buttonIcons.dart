import 'package:citas_med_app/src/utils/router/app_router.dart';
import 'package:citas_med_app/src/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonIcons extends StatelessWidget {
  const ButtonIcons(
      {super.key,
      required this.title,
      required this.icon,
      required this.isActive,
      this.onpress = true,
      this.sizeIcon = 10});
  final String title;
  final IconData icon;
  final bool isActive;

  final double sizeIcon;
  final bool onpress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onpress
          ? () {
              isActive
                  ? Navigator.pushNamed(context, AppRoutes.pagoCard)
                  : null;
              // Navigator.pushNamed(context, AppRouter.agendarCita);
            }
          : null,
      icon: FaIcon(
        icon,
        color: AppColors.primaryBlue,
        size: sizeIcon,
      ),
      label: Text(
        title,
        style: TextStyle(fontSize: sizeIcon, color: AppColors.primaryBlue),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        side: const BorderSide(color: AppColors.primaryBlue, width: 1.0),
        minimumSize: const Size(120, 30),
      ),
    );
  }
}
