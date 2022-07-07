import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:path/path.dart' as p;
import 'package:shapes/view/index.dart';

import 'Button_nav.dart';

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
              style: TextStyle(fontSize: 30, ),
            ),
            centerTitle: true,
            elevation: 8,
          ),
        ),
        drawer: Container(
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
                  title: Text('data'),
                ),
              ],
            ),
          ),
        ),
        body: Index(),
      ),
    );
  }
}
