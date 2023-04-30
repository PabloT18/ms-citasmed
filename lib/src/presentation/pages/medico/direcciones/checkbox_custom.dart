import 'package:flutter/material.dart';

class CheckBoxCustom extends StatefulWidget {
  const CheckBoxCustom({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<CheckBoxCustom> createState() => _CheckBoxCustomState();
}

class _CheckBoxCustomState extends State<CheckBoxCustom> {
  bool stateCheck = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(widget.title),
        value: stateCheck,
        //  dense: true,
        onChanged: (newValue) {
          setState(() {
            stateCheck = !stateCheck;
          });
        },
      ),
    );
  }
}
