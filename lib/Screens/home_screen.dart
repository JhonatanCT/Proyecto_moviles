import 'package:flutter/material.dart';

import 'login.dart';

class HomeScreen extends StatelessWidget {
  final String enlaceImagen;
  final String enlaceSpinner;

  const HomeScreen(
      {super.key, required this.enlaceImagen, required this.enlaceSpinner});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(130),
        child: Column(
          children: [
            FadeInImage(
              height: 350,
              alignment: Alignment.center,
              image: AssetImage(enlaceImagen),
              placeholder: AssetImage(enlaceSpinner),
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                ),
              ],
            ),
            Card(
              child: Center(
                  child: Column(children: <Widget>[
                MaterialButton(
                  minWidth: 200.0,
                  height: 50.0,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Login(),
                    ));
                    // ignore: avoid_print
                    print("Ir a Inicio de Sesión");
                  },
                  color: Colors.lightBlue,
                  child: const Text('Iniciar Sesión',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      )),
                )
              ])),
            )
          ],
        ),
      ),
    );
  }
}
