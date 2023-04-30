import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:citas_med_app/src/utils/router/app_router.dart';
import 'package:citas_med_app/src/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MedPaceintesPanel extends StatelessWidget {
  const MedPaceintesPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppLayoutConst.paddingL),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
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
              labelText: 'Busqueda de paciente',
              hintText: 'Busqueda de paciente',
            ),
            onChanged: (_) {},
          ),
          const SizedBox(height: AppLayoutConst.marginL),
          Expanded(
            child: ListView.separated(
              itemCount: 4,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) => ListTile(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.docPacientePerfilPage);
                },
                title: Text(
                  'Juan Perez',
                  style: Theme.of(context).textTheme.headline4,
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Clinica Monte Sinai'),
                    SizedBox(height: AppLayoutConst.marginS),
                    Text('Telefono: 0985698569'),
                  ],
                ),
                leading: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primaryBlue,
                  ),
                  child: const FaIcon(
                    FontAwesomeIcons.userLarge,
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
