import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'Datos_Productos.dart';
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
    var url = "http://192.168.1.72/products.php";

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
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.fromLTRB(15, 20, 15, 15),
                elevation: 4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Column(
                    children: [
                      FadeInImage(
                          placeholder: AssetImage('assets/images/Loading.gif'),
                          image: AssetImage(data[index].slug),
                          height: 80,
                          fit: BoxFit.cover),
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Text(data[index].name ),)
                          ,
                      Center(
                          child: Text( "\$"+data[index].price,
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.cyan[800]))),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Details()),
                            );
                          },
                          child: Text("Añadir a la lista",
                              style: TextStyle(
                                  color: Colors.cyan[800],
                                  fontWeight: FontWeight.bold))),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}


