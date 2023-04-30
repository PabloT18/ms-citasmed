import 'dart:developer';

import 'package:citas_med_app/src/presentation/pages/medico/chat/chat_page.dart';
import 'package:citas_med_app/src/presentation/pages/medico/direcciones/direcciones_page.dart';
import 'package:citas_med_app/src/presentation/pages/medico/home/med_home_page.dart';
import 'package:citas_med_app/src/presentation/pages/login/login_page.dart';
import 'package:citas_med_app/src/presentation/pages/medico/registro/med_registro_page.dart';
import 'package:citas_med_app/src/presentation/pages/paciente/home/pac_agendar_panel.dart';
import 'package:citas_med_app/src/presentation/pages/paciente/registro/pac_registro_page.dart';

import 'package:citas_med_app/src/presentation/pages/register/register_page.dart';
import 'package:flutter/material.dart';

import '../../presentation/pages/paciente/home/pac_home_page.dart';
import '../../presentation/pages/paciente/home/pac_medio_pago.dart';
import '../../presentation/pages/paciente/home/pago_card.dart';

class AppRoutes {
  static const String loadingPage = '/';
  static const String pacregisterPage = '/register/pac';
  static const String medregisterPage = '/register/doc';

  static const String loginPage = '/login';
  static const String pacHomePage = '/pac/home';
  static const String docHomePage = '/doc/home';
  static const String docDirrecionesPage = '/doc/direcciones';

  static const String docChatPage = '/doc/chat/';
  static const String pacAgendarCita = '/pac/agendarcita';
  static const String pacSeleccionarMedioPago = '/pac/seleccionarMedioPago';
  static const String pagoCard = '/pac/pagoTarjeta';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    log('--------------------------------------${settings.name}');
    switch (settings.name) {
      case loadingPage:
        return _fadeRoute(const RegisterPage(), loginPage, settings);
      case medregisterPage:
        return _fadeRoute(const MedRegistroPage(), medregisterPage, settings);
      case pacregisterPage:
        return _fadeRoute(const PacRegistroPage(), pacregisterPage, settings);
      case docHomePage:
        return _fadeRoute(const DocHomePage(), docHomePage, settings);
      case loginPage:
        return _fadeRoute(const LoginPage(), loginPage, settings);
      case docChatPage:
        return _fadeRoute(const ChatPage(), docChatPage, settings);
      case docDirrecionesPage:
        return _fadeRoute(const DirecionesPage(), docDirrecionesPage, settings);
      case pacHomePage:
        return _fadeRoute(const PacHomePage(), docDirrecionesPage, settings);
      case pacAgendarCita:
        return _fadeRoute(const PacAgendarCita(), pacAgendarCita, settings);
      case pacSeleccionarMedioPago:
        return _fadeRoute(
            const PacElegirMedioPago(), pacSeleccionarMedioPago, settings);
      case pagoCard:
        return _fadeRoute(const PagoCard(), pagoCard, settings);

      default:
        return _errorRoute();
    }
  }

  static MaterialPageRoute _fadeRoute(
    Widget child,
    String routName,
    RouteSettings settings,
  ) {
    return MaterialPageRoute(builder: (context) => child, settings: settings);
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Pagina No Encontrada posiblemente este en desarrollo'),
        ),
      );
    });
  }
}
