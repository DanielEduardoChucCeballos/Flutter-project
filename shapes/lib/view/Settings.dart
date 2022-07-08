import 'package:flutter/material.dart';

import 'MenuDrawer.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Settings"),),
        drawer: MenuDrawer(),
        body: Center(
          child: Text(
            "Hola desde el Settings",
            style: TextStyle(fontSize: 30),
          ),
        ),
      
      ),
    );
  }
}
