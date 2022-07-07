import 'package:flutter/material.dart';
import 'package:shapes/view/Home.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hola desde el NavigationDrawer",
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
