import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'Datos_Category.dart';

class IndexDos extends StatefulWidget {
  const IndexDos({Key? key}) : super(key: key);

  @override
  State<IndexDos> createState() => _IndexDosState();
}

class _IndexDosState extends State<IndexDos> {
/*   List<Datos_Category> data = <Datos_Category>[];

  Future<List<Datos_Category>> tomar_datos() async {
    var url = "http://192.168.1.138/categories.php";

    var response =
        await http.post(Uri.parse(url)).timeout(Duration(seconds: 90));

    var datos = json.decode(response.body);

    var registros = <Datos_Category>[];

    for (datos in datos) {
      registros.add(Datos_Category.fromJson(datos));
    }
    return registros;
  }

  @override
  void initState() {
    super.initState();
    tomar_datos().then((value) {
      setState(() {
        data.addAll(value);
      });
    });
  }
 */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: ListView(
              children: [
                CarouselSlider(
                    items: [
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                              /* borderRadius: BorderRadius.all(Radius.circular(15)), */
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 3.0,
                                  spreadRadius: 2.0,
                                )
                              ],
                              image: DecorationImage(
                                image: AssetImage("assets/images/1.jpg"),
                                fit: BoxFit.cover,
                              )),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(
                                  fontSize: 25,
                                  backgroundColor:
                                      (Color.fromARGB(155, 0, 0, 0))),
                              alignment: Alignment.bottomCenter,
                            ),
                            onPressed: () {
                              /*    Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Formulario()),
                            ); */
                            },
                            child: const Text(
                              'Pedidos Persinalizados',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            /* borderRadius: BorderRadius.all(Radius.circular(15)), */
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black38,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 3.0,
                                spreadRadius: 2.0,
                              )
                            ],
                            image: DecorationImage(
                              image: AssetImage("assets/images/2.jpg"),
                              fit: BoxFit.cover,
                            )),
                        child: Text("Cotización",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                backgroundColor:
                                    Colors.black.withOpacity(0.5))),
                        alignment: Alignment.bottomCenter,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            /* borderRadius: BorderRadius.all(Radius.circular(15)), */
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black38,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 3.0,
                                spreadRadius: 2.0,
                              )
                            ],
                            image: DecorationImage(
                              image: AssetImage("assets/images/3.jpg"),
                              fit: BoxFit.cover,
                            )),
                        child: Text("Filamentos",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                backgroundColor:
                                    Colors.black.withOpacity(0.5))),
                        alignment: Alignment.bottomCenter,
                      ),
                    ],
                    options: CarouselOptions(
                      height: 200.0,
                      autoPlay: true,
                      autoPlayCurve: Curves.easeInOut,
                      enlargeCenterPage: true,
                      autoPlayInterval: Duration(seconds: 3),
                      scrollDirection: Axis.horizontal,
                    )),
                //*Aqui termina el carousel_slider
              ],
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 200,
                  color: Colors.purple[600],
                  child: const Center(
                      child: Text(
                    'Item 1',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
                ),
                Container(
                  width: 200,
                  color: Colors.purple[500],
                  child: const Center(
                      child: Text(
                    'Item 2',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
                ),
                Container(
                  width: 200,
                  color: Colors.purple[400],
                  child: const Center(
                      child: Text(
                    'Item 3',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
                ),
                Container(
                  width: 200,
                  color: Colors.purple[300],
                  child: const Center(
                      child: Text(
                    'Item 4',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
