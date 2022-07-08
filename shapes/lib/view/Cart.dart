import 'package:flutter/material.dart';
import 'package:shapes/view/MenuDrawer.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            automaticallyImplyLeading: true,
            title: Text(
              'Shapes 3D',
              style: TextStyle(fontSize: 30, ),
            ),
            centerTitle: true,
            elevation: 8,
          ),
        ),
        drawer: MenuDrawer(),
        body: Center(
          child: Text('Codesource.io'),
        ),
      ),
    );
  }
}
