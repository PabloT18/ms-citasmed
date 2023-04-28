import 'package:citas_med_app/src/utils/responsive.dart';
import 'package:citas_med_app/src/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.instance(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Juan'),
      ),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: AppLayoutConst.paddingL),
        child: Column(mainAxisSize: MainAxisSize.max, children: [
          const SizedBox(height: AppLayoutConst.spaceL),
          const SizedBox(height: AppLayoutConst.spaceM),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.primaryBlue,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(8),
              width: responsive.wp(70),
              child: const Text(
                'Doctor disculpe sobre la receta, las pastillas cada cuanto las debo tomar',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: AppLayoutConst.spaceM),
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColors.primaryBlue.withOpacity(0.8)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColors.primaryBlue.withOpacity(0.8)),
                    ),
                    labelText: 'Mensaje',
                    hintText: 'Mensaje',
                  ),
                  onChanged: (_) {},
                ),
              ),
              const SizedBox(width: AppLayoutConst.spaceM),
              const FaIcon(FontAwesomeIcons.paperPlane)
            ],
          ),
          const SizedBox(height: AppLayoutConst.spaceXL),
          const SizedBox(height: AppLayoutConst.spaceM),
        ]),
      ),
    );
  }
}
