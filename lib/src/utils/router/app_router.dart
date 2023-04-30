import 'dart:developer';

import 'package:citas_med_app/src/presentation/pages/medico/chat/chat_page.dart';
import 'package:citas_med_app/src/presentation/pages/medico/cobros/cobros_page.dart';
import 'package:citas_med_app/src/presentation/pages/medico/cobros/registrag_cuenta_page.dart';
import 'package:citas_med_app/src/presentation/pages/medico/direcciones/direcciones_page.dart';
import 'package:citas_med_app/src/presentation/pages/medico/direcciones/registro_horario_page.dart';
import 'package:citas_med_app/src/presentation/pages/medico/direcciones/regsitro_nuevo_page.dart';
import 'package:citas_med_app/src/presentation/pages/medico/home/med_home_page.dart';
import 'package:citas_med_app/src/presentation/pages/login/login_page.dart';
import 'package:citas_med_app/src/presentation/pages/medico/perfil/med_paciente_page.dart';
import 'package:citas_med_app/src/presentation/pages/medico/registro/med_registro_page.dart';
import 'package:citas_med_app/src/presentation/pages/medico/registro/med_registro_page_2.dart';
import 'package:citas_med_app/src/presentation/pages/paciente/chat/pac_chat_page.dart';
import 'package:citas_med_app/src/presentation/pages/paciente/home/pac_agendar_panel.dart';
import 'package:citas_med_app/src/presentation/pages/paciente/home/pac_doctor_page.dart';
import 'package:citas_med_app/src/presentation/pages/paciente/registro/pac_registro_page.dart';

import 'package:citas_med_app/src/presentation/pages/register/register_page.dart';
import 'package:flutter/material.dart';

import '../../presentation/pages/paciente/home/pac_home_page.dart';
import '../../presentation/pages/paciente/home/pac_medio_pago.dart';
import '../../presentation/pages/paciente/home/pago_card.dart';
import '../../presentation/pages/register/register_vincular_cuenta.dart';

class AppRoutes {
  static const String loadingPage = '/';
  static const String pacregisterPage = '/register/pac';
  static const String medregisterPage = '/register/doc';
  static const String medregister2Page = '/register/doc2';
  static const String registerVincularCuentasPage = '/register/vincular';

  static const String loginPage = '/login';
  static const String pacHomePage = '/pac/home';
  static const String docHomePage = '/doc/home';

  ///MEDICO ROUTES
  static const String docChatPage = '/doc/chat/';
  static const String docDirrecionesPage = '/doc/direcciones';
  static const String docCobrosPage = '/doc/cobros';
  static const String docCobrosRegistroPage = '/doc/cobros/registro';

  static const String docDirrecionesRegistroPage = '/doc/direcciones/registro';
  static const String docDirrecionnesHorarioPage = '/doc/direcciones/horario';

  static const String docPacientePerfilPage = '/doc/paciente/perfil';

  ///PACIENTE ROUTERS
  static const String pacPerfil = '/pac/perfil/';
  static const String pacChatPage = '/pac/chat/';
  static const String pacAgendarCita = '/pac/agendarcita';
  static const String pacSeleccionarMedioPago = '/pac/seleccionarMedioPago';
  static const String pagoCard = '/pac/pagoTarjeta';
  static const String pacDoctorPage = '/pac/doctor';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    log('--------------------------------------${settings.name}');
    switch (settings.name) {
      case loadingPage:
        return _fadeRoute(const RegisterPage(), loginPage, settings);

      case registerVincularCuentasPage:
        return _fadeRoute(const RegistroVincularCuentaPage(),
            registerVincularCuentasPage, settings);

      case loginPage:
        return _fadeRoute(const LoginPage(), loginPage, settings);

      //Medico Doctor
      case medregisterPage:
        return _fadeRoute(const MedRegistroPage(), medregisterPage, settings);
      case medregister2Page:
        return _fadeRoute(const MedRegistroPage2(), medregister2Page, settings);
      case docHomePage:
        return _fadeRoute(const DocHomePage(), docHomePage, settings);
      case docChatPage:
        return _fadeRoute(const ChatPage(), docChatPage, settings);

      case docPacientePerfilPage:
        return _fadeRoute(
            const MedPerfilPacientePage(), docPacientePerfilPage, settings);
      case docDirrecionesPage:
        return _fadeRoute(const DirecionesPage(), docDirrecionesPage, settings);
      case docCobrosPage:
        return _fadeRoute(const CobrosPage(), docCobrosPage, settings);
      case docCobrosRegistroPage:
        return _fadeRoute(
            const RegistrarCuentaCobroPage(), docCobrosRegistroPage, settings);

      case docDirrecionesRegistroPage:
        return _fadeRoute(const MedDireccionRegistroPage(),
            docDirrecionesRegistroPage, settings);

      case docDirrecionnesHorarioPage:
        return _fadeRoute(const MedRegsitroHorarioPage(),
            docDirrecionnesHorarioPage, settings);

      /// PACEINTE
      case pacregisterPage:
        return _fadeRoute(const PacRegistroPage(), pacregisterPage, settings);
      case pacChatPage:
      case pacPerfil:
        return _fadeRoute(const PacChatPage(), pacPerfil, settings);
      case pacHomePage:
        return _fadeRoute(const PacHomePage(), pacHomePage, settings);
      case pacAgendarCita:
        return _fadeRoute(const PacAgendarCita(), pacAgendarCita, settings);
      case pacSeleccionarMedioPago:
        return _fadeRoute(
            const PacElegirMedioPagoPage(), pacSeleccionarMedioPago, settings);
      case pagoCard:
        return _fadeRoute(const PagoCard(), pagoCard, settings);
      case pacDoctorPage:
        return _fadeRoute(const PacDoctorPage(), pacDoctorPage, settings);

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
