import 'package:flutter/material.dart';
import 'package:shapes/auth/login_page.dart';
import 'package:shapes/view/Details.dart';
import 'package:shapes/view/Error.dart';
import 'package:shapes/view/Home.dart';

import 'view/Button_nav.dart';



Map<String, WidgetBuilder> obtenerRuta() {
  return <String, WidgetBuilder>{
  '/details': (BuildContext context) => Details(),
  'login': (BuildContext context) => LoginPage(),
  'home': (BuildContext context) => Home(),
  'error': (BuildContext context) => Error_Test(),
  'navigator': (BuildContext context) =>ButoonNav(),
  };
}
