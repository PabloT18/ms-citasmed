import 'package:citas_med_app/src/utils/router/app_router.dart';
import 'package:citas_med_app/src/utils/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonIcons extends StatelessWidget {
  const ButtonIcons(
      {required this.title, required this.icon, required this.isActive});
  final String title;
  final IconData icon;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        this.isActive ? Navigator.pushNamed(context, AppRoutes.pagoCard) : null;
        // Navigator.pushNamed(context, AppRouter.agendarCita);
      },
      icon: FaIcon(
        icon,
        color: AppColors.primaryBlue,
        size: 10,
      ),
      label: Text(
        title,
        style: TextStyle(fontSize: 10.0, color: AppColors.primaryBlue),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        side: BorderSide(color: AppColors.primaryBlue, width: 1.0),
        minimumSize: Size(120, 30),
      ),
    );
  }
}