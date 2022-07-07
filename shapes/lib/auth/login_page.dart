import 'package:flutter/material.dart';
import 'package:shapes/view/Error.dart';

import '../main.dart';
import '../view/Home.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.cyan,
                Colors.cyan[800]!,
              ],
            ),
          ),
          child: Image.asset(
            "assets/images/logo.jpeg",
            height: 200,
          ),
        ),
        Transform.translate(
          offset: Offset(0, -40),
          child: Center(
            child: SingleChildScrollView(
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                margin: const EdgeInsets.only(
                    left: 20, right: 20, top: 260, bottom: 20),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(labelText: "Usuario:"),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: "Contraseña:"),
                        obscureText: true,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      RaisedButton(
                        color: Color.fromARGB(255, 2, 18, 53),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        textColor: Colors.white,
                        onPressed: () => _login(context),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Iniciar Sesión"),
                            if (_loading == true)
                              Container(
                                height: 20,
                                width: 20,
                                margin: const EdgeInsets.only(left: 20),
                                child: CircularProgressIndicator(),
                              ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("¿No estas registrado?"),
                          FlatButton(
                            textColor: Theme.of(context).primaryColor,
                            child: Text("Registrarse"),
                            onPressed: () {
                              _showRegister(context);
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }

  void _login(BuildContext context) {
    if (!_loading) {
      setState(() {
        _loading = true;
      });
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Error_Test()),
    );
  }

  void _showRegister(BuildContext context) {
    /* Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Register()),
    ); */
  }
}
