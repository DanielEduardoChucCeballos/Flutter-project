import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hola desde el Carrito de compras",
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
