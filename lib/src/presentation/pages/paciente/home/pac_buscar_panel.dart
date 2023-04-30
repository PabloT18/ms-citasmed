import 'package:citas_med_app/src/presentation/pages/paciente/home/especialidad_button.dart';
import 'package:citas_med_app/src/presentation/pages/paciente/home/pac_doctor_panel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:citas_med_app/src/utils/theme/app_colors.dart';

class PacBuscarPanel extends StatelessWidget {
  const PacBuscarPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const size = Size(140, 40);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppLayoutConst.paddingL),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(height: AppLayoutConst.spaceL),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Hola, Kevin!',
                style: Theme.of(context).textTheme.headline3,
              )),
          const SizedBox(height: AppLayoutConst.spaceL),
          TextFormField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: AppColors.primaryBlue.withOpacity(0.8)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: AppColors.primaryBlue.withOpacity(0.8)),
              ),
              labelText: 'Buscar',
              hintText: 'Buscar',
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              suffixIcon: const SizedBox(
                child: Icon(
                  Icons.search,
                  color: AppColors.primaryBlue,
                ),
              ),
            ),
            onChanged: (_) {},
          ),
          const SizedBox(height: AppLayoutConst.marginL),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                spacing: 5,
                crossAxisAlignment: WrapCrossAlignment.start,
                alignment: WrapAlignment.start,
                children: const [
                  EspecialidadButton(title: 'Medico general'),
                  EspecialidadButton(title: 'Psicologo'),
                  EspecialidadButton(title: 'Gastroenterologo'),
                  EspecialidadButton(title: 'Urología'),
                  EspecialidadButton(title: 'Dentista'),
                  EspecialidadButton(title: 'Pediatría'),
                  EspecialidadButton(title: 'Oncología'),
                  EspecialidadButton(title: 'Geriatría'),
                  EspecialidadButton(title: 'Traumatología'),
                ],
              ),
            ],
          ),
          const SizedBox(height: AppLayoutConst.marginL),
          Expanded(
            child: ListView.separated(
              itemCount: 4,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) => ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PacDoctor()),
                  ); // Aquí puedes agregar la acción que se ejecutará cuando se haga clic en el enlace
                },
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'DESTACADO',
                      style: TextStyle(
                        color: AppColors.primaryBlue,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Dra. Ana',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Gastroenterologa',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        FaIcon(FontAwesomeIcons.solidStar,
                            size: 18, color: AppColors.primaryBlue),
                        FaIcon(FontAwesomeIcons.solidStar,
                            size: 18, color: AppColors.primaryBlue),
                        FaIcon(FontAwesomeIcons.solidStar,
                            size: 18, color: AppColors.primaryBlue),
                        FaIcon(FontAwesomeIcons.solidStar,
                            size: 18, color: AppColors.primaryBlue),
                        FaIcon(FontAwesomeIcons.starHalfStroke,
                            size: 18, color: AppColors.primaryBlue),
                        SizedBox(width: 15),
                        Text(
                          '371 opiniones',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                leading: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primaryBlue,
                  ),
                  child: const FaIcon(
                    FontAwesomeIcons.userDoctor,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
