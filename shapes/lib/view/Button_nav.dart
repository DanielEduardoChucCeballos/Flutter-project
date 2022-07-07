import 'package:flutter/material.dart';

import 'Cart.dart';
import 'Error.dart';
import 'Home.dart';
import 'Search.dart';

class ButoonNav extends StatefulWidget {
  ButoonNav({Key? key}) : super(key: key);

  @override
  State<ButoonNav> createState() => _ButoonNavState();
}

class _ButoonNavState extends State<ButoonNav> {
  int _paginaActual = 1;
  List<Widget> _paginas = [
    //*Aqui vas agregando las paginas que quieres
    Error_Test(),
    Home(),
    Cart(),
    Search(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _paginas[_paginaActual],
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: IconThemeData(color: Colors.grey, size: 20),
        selectedIconTheme: IconThemeData(color: Colors.cyan[800], size: 40),
        selectedItemColor: Colors.cyan[800],
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _paginaActual = index;
          });
        },
        currentIndex: _paginaActual,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.plus_one), label: "Errror"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Shopping Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
