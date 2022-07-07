import 'package:flutter/material.dart';
import 'package:shapes/auth/login_page.dart';
import 'package:shapes/view/Details.dart';



Map<String, WidgetBuilder> obtenerRuta() {
  return <String, WidgetBuilder>{
  '/details': (BuildContext context) => Details(),
  'login': (BuildContext context) => LoginPage(),
  };
}
