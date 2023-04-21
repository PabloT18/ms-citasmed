import 'dart:io';
import 'dart:math' as math;
import 'package:flutter/material.dart';

class Responsive {
  late double _width, _height, _diagonal;
  late bool _portrait;
  late bool _movil;

  late double _paddingTop;
  late double _paddingBottom;

  final double bottomNavigationBar =
      Platform.isAndroid ? kBottomNavigationBarHeight : 90;

  static Responsive? _instance;
  Responsive._(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    _height = size.height;
    _width = size.width;

    _diagonal = math.sqrt(math.pow(height, 2) + math.pow(width, 2));

    _portrait = MediaQuery.of(context).orientation == Orientation.portrait;
    _paddingTop = MediaQuery.of(context).padding.top;
    _paddingBottom = MediaQuery.of(context).padding.bottom;

    _movil = _width < AppLayoutConst.kmovilwidth;
  }

  static Responsive instance(BuildContext context) =>
      _instance ??= Responsive._(context);

  double wp(double porcent) => _width * porcent / 100;
  double dp(double porcent) => _diagonal * porcent / 100;
  double hp(double porcent) => _height * porcent / 100;

  double hpa(double porcent, {bool home = true}) {
    var res = _height -
        _paddingTop -
        (home ? (_portrait ? 80 : 60) : 60) -
        (home ? 75 : 0);
    return res * porcent / 100;
  }

  double get width => _width;
  double get height => _height;
  double get diagonal => _diagonal;

  double get paddingTop => _paddingTop;
  double get paddingBottom => _paddingBottom;

  bool get portrait => _portrait;

  bool get movil => _movil;
}

class AppLayoutConst {
  // const AppLayoutConst._();

  /// Desktop screen >= 900px
  static const double kmovilwidth = 600.0;

  // Spacing
  /// Space Zero = 0.0
  static const double spaceZero = 0.0;

  /// Space XS = 2.0
  static const double spaceXS = 2.0;

  /// Space S = 4.0
  static const double spaceS = 4.0;

  /// Space M = 8.0
  static const double spaceM = 8.0;

  /// Space L = 16.0
  static const double spaceL = 16.0;

  /// Space XL = 32.0
  static const double spaceXL = 32.0;

  // Margin
  /// Margin Zero = 0.0
  static const double marginZero = 0.0;

  /// Margin XS = 2.0
  static const double marginXS = 2.0;

  /// Margin S = 4.0
  static const double marginS = 4.0;

  /// Margin M = 8.0
  static const double marginM = 8.0;

  /// Margin L = 16.0
  static const double marginL = 16.0;

  /// Margin XL = 32.0
  static const double marginXL = 32.0;

  // Padding
  /// Padding Zero = 0.0
  static const double paddingZero = 0.0;

  /// Padding XS = 2.0
  static const double paddingXS = 2.0;

  /// Padding S = 4.0
  static const double paddingS = 4.0;

  /// Padding M = 8.0
  static const double paddingM = 8.0;

  /// Padding L = 16.0
  static const double paddingL = 16.0;

  /// Padding XL = 32.0
  static const double paddingXL = 32.0;

  /// [Dimensions]
  ///Icons
  static const double iconArroForward = 16.0;

  /// Cards
  static const double cardBorderRadius = 6.0;
  static const double cardElevation = 4.0;

  /// Buttons
  static const double buttonBorderRadius = 10.0;
  static const double buttonElevation = 2.0;
}
