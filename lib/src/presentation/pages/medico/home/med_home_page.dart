import 'package:citas_med_app/src/presentation/pages/medico/home/med_chat_panel.dart';
import 'package:citas_med_app/src/presentation/pages/medico/home/med_citas_panel.dart';
import 'package:citas_med_app/src/presentation/pages/medico/home/mer_pacientes_panel.dart';
import 'package:citas_med_app/src/presentation/pages/medico/widgets/med_drawer_custom.dart';
import 'package:citas_med_app/src/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DocHomePage extends StatefulWidget {
  const DocHomePage({Key? key}) : super(key: key);

  @override
  State<DocHomePage> createState() {
    return _DocHomePageState();
  }
}

class _DocHomePageState extends State<DocHomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetPanels = <Widget>[
    MedCitasPanel(),
    MedPaceintesPanel(),
    MedChatPanel(),
  ];

  static const List<String> _widgetPanelstitle = <String>[
    'Citas',
    'Pacientes',
    'Chat',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_widgetPanelstitle.elementAt(_selectedIndex)),
        actions: [
          IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const FaIcon(FontAwesomeIcons.userDoctor))
        ],
      ),
      drawer: MedDrawerCustom(
        ontap: _onItemTapped,
      ),
      body: Center(
        child: _widgetPanels.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.calendar), label: 'Citas'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.userDoctor), label: 'Pacientes'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.message), label: 'Chat')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primaryBlue.withOpacity(0.5),
        onTap: _onItemTapped,
      ),
    );
  }
}
