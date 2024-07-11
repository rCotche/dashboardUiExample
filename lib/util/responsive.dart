import 'package:flutter/material.dart';

class Responsive {
  //largeur de l'écran < 850
  //donc c'est un mobile
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;
  //largeur de l'écran compris entre 850 et 1100
  //donc c'est une tablette
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;
  //largeur de l'écran > 1100
  //donc c'est un pc
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;
}
