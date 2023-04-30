import 'package:citas_med_app/src/utils/router/app_router.dart';
import 'package:flutter/material.dart';

import '../../../../utils/responsive.dart';
import '../../../../utils/theme/app_colors.dart';

class MedDireccionRegistroPage extends StatelessWidget {
  const MedDireccionRegistroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.instance(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro de direcion'),
      ),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppLayoutConst.paddingXL),
          child: Column(
            children: [
              const Spacer(flex: 1),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      'Datos Específicos de la nueva dirreción del consultorio',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18))),
              // const Spacer(flex: 2),
              const SizedBox(height: 20),
              TextFormField(
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.primaryBlue.withOpacity(0.8))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.primaryBlue.withOpacity(0.8))),
                    labelText: 'Nombre'),
                onChanged: (_) {},
              ),
              const SizedBox(height: AppLayoutConst.spaceL),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Logo',
                    style: TextStyle(color: AppColors.primaryBlue),
                  )),
              const SizedBox(height: AppLayoutConst.spaceS),

              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Image.network(
                    'https://www.hospitalmontesinai.org/portals/0/LogoSinai.png',
                    height: 50),
              ),
              const SizedBox(height: AppLayoutConst.spaceXL),

              TextFormField(
                textCapitalization: TextCapitalization.sentences,
                obscureText: true,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.primaryBlue.withOpacity(0.8))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.primaryBlue.withOpacity(0.8))),
                    labelText: 'Especialidad'),
                onChanged: (_) {},
              ),
              const SizedBox(height: AppLayoutConst.spaceL),
              TextFormField(
                textCapitalization: TextCapitalization.sentences,
                obscureText: true,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.primaryBlue.withOpacity(0.8))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.primaryBlue.withOpacity(0.8))),
                    labelText: 'Direccion'),
                onChanged: (_) {},
              ),
              const SizedBox(height: AppLayoutConst.spaceL),
              const Image(image: AssetImage('lib/src/assets/images/image.png')),
              const Spacer(flex: 3),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, AppRoutes.docDirrecionnesHorarioPage);
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16.0)),
                  child: const Text('Siguiente'),
                ),
              ),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
