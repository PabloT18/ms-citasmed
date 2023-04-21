import 'package:citas_med_app/src/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Center(
              child: Text(
                'CitasMED',
                style: TextStyle(color: AppColors.secondaryBlue, fontSize: 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
