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
      title: Text(
        title,
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
