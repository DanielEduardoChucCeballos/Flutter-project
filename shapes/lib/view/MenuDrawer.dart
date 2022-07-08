import 'package:flutter/material.dart';
import 'package:shapes/view/Home.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Test123'),
              accountEmail: Text('test@123.com'),
              currentAccountPicture: CircleAvatar(
                radius: 50.0,
                backgroundColor: const Color(0xFF778899),
                backgroundImage: AssetImage('assets/images/userxd.gif'),
              ),
            ),
            ListTile(
              title: Text(
                'Mis Modelos 3D',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Mis compras',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Lista de deseos',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Pedidos Persinalizados',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Rate us',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
