import 'package:flutter/material.dart';
import 'package:shapes/view/Button_nav.dart';
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
      ),
        initialRoute: 'login',

    );
    
  }
}
