
import 'package:flutter/material.dart';

import 'package:shapes/view/index2.dart';
import 'MenuDrawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            centerTitle: true,
            elevation: 8,
          ),
        ),
        drawer: MenuDrawer(),
        body: IndexDos(),
      ),
    );
  }
}
