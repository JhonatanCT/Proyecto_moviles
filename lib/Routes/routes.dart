import 'package:flutter/material.dart';

import '../Screens/heroes.dart';
import '../Screens/home_screen.dart';
import '../Screens/inicio.dart';
import '../Screens/login.dart';
import '../Screens/perfil.dart';
import '../screens/Store_screen.dart';
import '../screens/carrito_screen.dart';

class AppRouter {
  static const rutaInicial = "home";

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(
          enlaceImagen: 'Resources/Logos/Logo_Empresa.png',
          enlaceSpinner: 'Resources/Spinners/spinner.gif',
        ),
    'login': (BuildContext context) => const Login(),
    'inicio': (BuildContext context) => const Inicio(),
    'heroes': (BuildContext context) => const Heroes(),
    'tienda': (BuildContext context) => const Tienda(),
    'perfil': (BuildContext context) => const Perfil(),
    "inicio": (BuildContext context) => StoreScreen(),
    "carrito": (BuildContext context) => Carrito()
  };
}




 
