import 'package:flutter/material.dart';

import 'Routes/routes.dart';

void main() {
  runApp(const DotaStore());
}

class DotaStore extends StatelessWidget{
  const DotaStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouter.rutaInicial,
      routes: AppRouter.routes,
    );
  }
}
