// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Carrito extends StatelessWidget{
  const Carrito({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.shopping_cart),
        title: Text("Carrito de Compras"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,),
        children: [
          Card(
        child: Column(
          children: [
            const ListTile(
              //leading: Icon(Icons.star),
              title: Text("Producto   | Precio |  Cantidad"),
              
              subtitle: Text(
                "Mouse-Pad!     S/.35.0                   1"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              OutlinedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "inicio");
                },
                child: const Text("Comprar"),
                )
            ]),
            )
          ],
        )),
       ],
    ),
    );
  }

}
