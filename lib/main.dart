import 'package:citas_med_app/src/utils/router/app_router.dart';
import 'package:citas_med_app/src/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CitasMED',
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.light,
      initialRoute: AppRoutes.loadingPage,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
