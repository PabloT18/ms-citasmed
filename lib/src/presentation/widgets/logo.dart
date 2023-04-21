import 'package:citas_med_app/src/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';

class LogoApp extends StatelessWidget {
  const LogoApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'CitasMED',
        style: TextStyle(
            color: AppColors.secondaryBlue,
            fontSize: 40,
            fontWeight: FontWeight.w900),
      ),
    );
  }
}
