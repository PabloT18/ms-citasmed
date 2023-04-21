import 'package:citas_med_app/src/utils/router/app_router.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'CitasMED',
      initialRoute: AppRoutes.loadingPage,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
