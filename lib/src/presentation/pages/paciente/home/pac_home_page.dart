import 'package:citas_med_app/src/presentation/pages/paciente/home/pac_buscar_panel.dart';
import 'package:citas_med_app/src/presentation/pages/paciente/home/pac_chat_panel.dart';
import 'package:citas_med_app/src/presentation/pages/paciente/home/pac_citas_panel.dart';
import 'package:citas_med_app/src/presentation/pages/paciente/home/pac_recetas_panel.dart';
import 'package:citas_med_app/src/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PacHomePage extends StatefulWidget {
  const PacHomePage({Key? key}) : super(key: key);

  @override
  State<PacHomePage> createState() {
    return _PacHomePageState();
  }
}


class _PacHomePageState extends State<PacHomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetPanels = <Widget>[
    PacBuscarPanel(),
    PacCitasPanel(),
    PacChatPanel(),
    PacRecetasPanel()
  ];

  static const List<String> _widgetPanelstitle = <String>[
    'Buscar',
    'Citas',
    'Chat',
    'Recetas'
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
              icon: const FaIcon(FontAwesomeIcons.solidCircleUser))
        ],
      ),
      //drawer: MedDrawerCustom(
      //  ontap: _onItemTapped,
      //),
      body: Center(
        child: _widgetPanels.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.magnifyingGlass), label: 'Buscar'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.calendar), label: 'Citas'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.message), label: 'Chat'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.star), label: 'Recetas')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primaryBlue.withOpacity(0.5),
        onTap: _onItemTapped,
      ),
    );
  }
}

