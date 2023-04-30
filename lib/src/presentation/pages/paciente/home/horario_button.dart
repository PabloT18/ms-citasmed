import 'package:citas_med_app/src/utils/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HorarioButton extends StatelessWidget{

  const HorarioButton({required this.title, required this.color, required this.colorIcono});
  final String title;
  final Color color;
  final Color colorIcono;

  @override
  Widget build (BuildContext context){
    return ElevatedButton.icon(
      onPressed: () {},
      icon: FaIcon(
        FontAwesomeIcons.userDoctor,
        color: colorIcono,
        size: 10,
      ),
      label: Text(title,
        style: TextStyle(
            fontSize: 10.0,
            color: colorIcono
        ),),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0)
        ),
        side: BorderSide(color: AppColors.primaryBlue, width: 1.0),
        minimumSize: Size(90, 30),
      ),
    );
  }
}