import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'Datos_Category.dart';
import 'Datos_Productos.dart';
import 'Details.dart';

class IndexDos extends StatefulWidget {
  const IndexDos({Key? key}) : super(key: key);

  @override
  State<IndexDos> createState() => _IndexDosState();
}

class _IndexDosState extends State<IndexDos> {
  List<Datos_Productos> data = <Datos_Productos>[];

  Future<List<Datos_Productos>> tomar_datos() async {
    var url = "https://shapes3dofficial.000webhostapp.com/products.php";

    var response =
        await http.post(Uri.parse(url)).timeout(Duration(seconds: 90));

    var datos = json.decode(response.body);

    var registros = <Datos_Productos>[];

    for (datos in datos) {
      registros.add(Datos_Productos.fromJson(datos));
    }
    return registros;
  }

  List<Datos_Category> dataCategory = <Datos_Category>[];

  Future<List<Datos_Category>> tomar_categories() async {
    var urlC = "http://192.168.1.70/categories.php";

    var responseC =
        await http.post(Uri.parse(urlC)).timeout(Duration(seconds: 90));

    var dataCategory = json.decode(responseC.body);

    var registrosC = <Datos_Category>[];

    for (dataCategory in dataCategory) {
      registrosC.add(Datos_Category.fromJson(dataCategory));
    }
    return registrosC;
  }

  @override
  void initState() {
    super.initState();
    tomar_datos().then((value) {
      setState(() {
        data.addAll(value);
      });
    });
    tomar_categories().then((value) {
      setState(() {
        dataCategory.addAll(value);
      });
    });
  }

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
          //* metodo Aqui
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dataCategory.length,
                itemBuilder: (context, indexC) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 120.0,
                        width: 120.0,
                        /* decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/userxd.gif'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ), */
                        child: Text(dataCategory[indexC].name),
                      ));
                }),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Card(
                    child: Container(
                      height: 100,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Expanded(
                                child: FadeInImage(
                                    placeholder:
                                        AssetImage('assets/images/Loading.gif'),
                                    image: AssetImage(data[index].image),
                                    height: 80,
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: ListTile(
                                      title: Text(data[index].name),
                                      subtitle: Text("\$" + data[index].price),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                          child: Text("Comprar"),
                                          onPressed: () {},
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        TextButton(
                                          child: Text("Añadir a la lista"),
                                          onPressed: () {},
                                        ),
                                        SizedBox(
                                          width: 8,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            flex: 8,
                          ),
                        ],
                      ),
                    ),
                    elevation: 8,
                    margin: EdgeInsets.all(10),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
