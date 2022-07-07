import 'package:flutter/material.dart';
import 'view/Home.dart';
import 'auth/login_page.dart';
/* import 'account.dart'; */
import 'view/NavigationDrawer.dart';
import 'view/Cart.dart';
import 'view/Search.dart';
import 'routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _paginaActual = 1;
  List<Widget> _paginas = [
    //*Aqui vas agregando las paginas que quieres
    LoginPage(),
    Home(),
    Search(),
    Cart(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: obtenerRuta(),
      title: 'Shapes 3D',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text('Shapes 3D', style: TextStyle(fontSize: 30)),
        )),
        body: _paginas[_paginaActual],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _paginaActual = index;
            });
          },
          currentIndex: _paginaActual,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded),
                label: "NavigationDrawer"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Shopping Cart"),
          ],
        ),
      ),
    );
  }
}
