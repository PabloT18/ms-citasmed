import 'package:flutter/material.dart';

class BottomSheetCustom extends StatefulWidget {
  const BottomSheetCustom({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomSheetCustom> createState() => _BottomSheetCustomState();
}

class _BottomSheetCustomState extends State<BottomSheetCustom> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://randomuser.me/api/portraits/men/1.jpg'),
            ),
            title: Text('Nombre de usuario'),
            subtitle: Text('Dirección'),
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.favorite_border),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
              ),
              IconButton(
                icon: const Icon(Icons.chat_bubble_outline),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
              ),
              IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          ListTile(
            title: Text(_selectedIndex.toString()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Botón 1'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Botón 2'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Botón 3'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Botón 4'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
