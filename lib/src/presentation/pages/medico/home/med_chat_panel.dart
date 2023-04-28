import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:citas_med_app/src/utils/router/app_router.dart';
import 'package:citas_med_app/src/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MedChatPanel extends StatelessWidget {
  const MedChatPanel({
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
              labelText: 'Busqueda de chat',
              hintText: 'Busqueda de chat',
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
                  Navigator.pushNamed(context, AppRoutes.docChatPage);
                },
                title: Text(
                  'Juan Perez',
                  style: Theme.of(context).textTheme.headline4,
                ),
                trailing: Text(
                  '12:45',
                  style: Theme.of(context).textTheme.headline5,
                ),
                subtitle: const Text(
                  'Doctor disculpe sobre la receta, las pastillas cada cuanto las debo tomar',
                  overflow: TextOverflow.ellipsis,
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
        ],
      ),
    );
  }
}
