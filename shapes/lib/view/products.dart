import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import '../datos/Datos_Productos.dart';
import 'Details.dart';
import 'MenuDrawer.dart';

class Product extends StatefulWidget {
  Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
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

  @override
  void initState() {
    super.initState();
    tomar_datos().then((value) {
      setState(() {
        data.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lista de Productos recuperados \n de la base de datos"),
        ),
        drawer: MenuDrawer(),
        body: ListView.builder(
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
      ),
    );
  }
}
