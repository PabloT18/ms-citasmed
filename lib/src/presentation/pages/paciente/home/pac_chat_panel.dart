import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PacChatPanel extends StatelessWidget {
  const PacChatPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
      body: const Center(
        child: Text('Chat'),
      ),
    );
  }
}