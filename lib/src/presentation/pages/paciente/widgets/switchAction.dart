import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:citas_med_app/src/utils/theme/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../utils/router/app_router.dart';
import '../home/pac_agendar_panel.dart';

class SwitchActionCustom extends StatefulWidget {
  const SwitchActionCustom({
    Key? key,
    required this.onChangeTap,
  }) : super(key: key);
  final VoidCallback onChangeTap;

  @override
  State<SwitchActionCustom> createState() => _SwitchActionCustomState();
}

class _SwitchActionCustomState extends State<SwitchActionCustom> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // bool isSwitched = false;

    return Center(
      child: Switch(
        value: isSwitched,
        activeColor: AppColors.btnWhite,
        activeTrackColor: AppColors.primaryBlue,
        inactiveThumbColor: AppColors.btnWhite,
        inactiveTrackColor: AppColors.btnBackgroundDisabled,
        onChanged: (value) {
          setState(() {
            // print(value);
            isSwitched = value;
            print(isSwitched);
          });
          widget.onChangeTap();
        },
      ),
    );
  }
}
