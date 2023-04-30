import 'package:flutter/material.dart';

class AlertDialogCustom extends StatelessWidget {
  const AlertDialogCustom({
    Key? key,
    required this.title,
    required this.content,
    required this.onPressed,
    this.canelbutton = true,
  }) : super(key: key);

  final String title;
  final String content;
  final VoidCallback onPressed;
  final bool canelbutton;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
          bottom: Radius.circular(20),
        ),
      ),
      title: Text(
        title,
        /*  */
        textAlign: TextAlign.center,
      ),
      content: Text(
        content,
        textAlign: TextAlign.center,
      ),
      actions: [
        if (canelbutton)
          TextButton(
            onPressed: () {
              // Acción al pulsar el botón de cancelar
              Navigator.of(context).pop();
            },
            child: const Text('Cancelar'),
          ),
        ElevatedButton(
          onPressed: onPressed,
          child: const Text('Aceptar'),
        ),
      ],
    );
  }
}
