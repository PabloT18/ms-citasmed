import 'package:animate_do/animate_do.dart';
import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:citas_med_app/src/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MedCitasPanel extends StatelessWidget {
  const MedCitasPanel({
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
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Hola, Ana!',
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
              labelText: 'Fecha Desde',
              hintText: 'Fecha Desde',
            ),
            onChanged: (_) {},
          ),
          const SizedBox(height: AppLayoutConst.spaceM),
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
              labelText: 'Fecha Hasta',
              hintText: 'Fecha Hasta',
            ),
            onChanged: (_) {},
          ),
          const SizedBox(height: AppLayoutConst.marginL),
          Expanded(
            child: ListView.separated(
              itemCount: 10,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) => FadeInRight(
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    'Pablo Torres',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Clinica Monte Sinai'),
                      SizedBox(height: AppLayoutConst.marginS),
                      Text('Fecha: 20/04/23'),
                      SizedBox(height: AppLayoutConst.marginS),
                      Text('Hora: 9:00am - 10:00am'),
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
            ),
          )
        ],
      ),
    );
  }
}
