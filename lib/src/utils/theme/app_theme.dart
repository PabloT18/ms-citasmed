import 'package:citas_med_app/src/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  static ThemeData get light {
    return ThemeData(
      brightness: Brightness.light,
      primarySwatch: AppColors.primaryBlueMaterial,
      tabBarTheme: const TabBarTheme(
        labelColor: AppColors.primaryBlue,
      ),
      // textTheme: GoogleFonts.latoTextTheme()
      //     .apply(
      //       bodyColor: Colors.black, //<-- SEE HERE
      //       displayColor: Colors.black, //<
      //     )
      //     .copyWith(
      //       headline1: const TextStyle(
      //         fontSize: 24,
      //         color: Colors.black,
      //         fontWeight: FontWeight.bold,
      //       ),
      //       headline2: const TextStyle(
      //         fontSize: 22,
      //         color: Colors.black,
      //         fontWeight: FontWeight.bold,
      //       ),
      //       headline3: const TextStyle(
      //         fontSize: 20,
      //         color: Colors.black,
      //         fontWeight: FontWeight.bold,
      //       ),
      //       headline4: const TextStyle(fontSize: 18, color: Colors.black),
      //       headline5: const TextStyle(fontSize: 16),
      //       headline6: const TextStyle(fontSize: 14),
      //     ),
    );
  }
}
