import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'Button_nav.dart';
import 'Details.dart';
import 'Formulario.dart';

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          image(),
          title(),
          Padding(
            padding: EdgeInsets.all(1),
          ),
          SizedBox(
            height: 15,
          ),
          CarouselSlider(
              items: [
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
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
                            backgroundColor: (Color.fromARGB(155, 0, 0, 0))),
                        alignment: Alignment.bottomCenter,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Formulario()),
                        );
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
                      borderRadius: BorderRadius.all(Radius.circular(15)),
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
                          backgroundColor: Colors.black.withOpacity(0.5))),
                  alignment: Alignment.bottomCenter,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
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
                          backgroundColor: Colors.black.withOpacity(0.5))),
                  alignment: Alignment.bottomCenter,
                ),
              ],
              options: CarouselOptions(
                height: 190.0,
                autoPlay: true,
                autoPlayCurve: Curves.easeInOut,
                enlargeCenterPage: true,
                autoPlayInterval: Duration(seconds: 3),
                scrollDirection: Axis.horizontal,
              )),
          tituloCategory(),
          listProducts(),
          cursos(),
          courses(),
        ],
      ),
    );
  }
}

image() {
  return Column(
    children: [
      Image.asset(
        "assets/images/logo.jpeg",
        width: 200,
      ),
      Text("Shapes 3D",
          style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold)),
    ],
  );
}

title() {
  return Padding(
    padding: EdgeInsets.all(30.0),
    child: Text(
      "Buenos Días, username",
      style: TextStyle(
        fontSize: 25,
      ),
      textAlign: TextAlign.center,
    ),
  );
}

tituloCategory() {
  return Padding(
    padding: EdgeInsets.all(30.0),
    child: Text(
      "Catálogo de Productos",
      style: TextStyle(
        fontSize: 25,
      ),
      textAlign: TextAlign.center,
    ),
  );
}

cursos() {
  return Padding(
    padding: EdgeInsets.all(30.0),
    child: Text(
      "Catálogo de Productos",
      style: TextStyle(
        fontSize: 25,
      ),
      textAlign: TextAlign.center,
    ),
  );
}

courses() {
  return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {},
                child: Container(
                  width: 90,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Image.asset("assets/images/course-1.jpg"),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {},
                child: Container(
                  width: 90,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Image.asset("assets/images/course-2.png"),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {},
                child: Container(
                  width: 90,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Image.asset("assets/images/course-1.jpg"),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {},
                child: Container(
                  width: 90,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Image.asset("assets/images/course-2.png"),
                  ),
                )),
          ),
        ],
      ));
}

/* CARDS */
class listProducts extends StatelessWidget {
  const listProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Details()),
            );
          },
          child: Container(
            height: 270,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.fromLTRB(15, 20, 15, 15),
              elevation: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Column(children: <Widget>[
                  FadeInImage(
                      placeholder: AssetImage('assets/images/Loading.gif'),
                      image: AssetImage("assets/images/article-1.jpg"),
                      height: 80,
                      fit: BoxFit.cover),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text("Space invaders \n toilet paper holder ")),
                  Center(
                      child: Text("000.00",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan[800]))),
                  TextButton(
                      onPressed: () {},
                      child: Text("Añadir a la lista",
                          style: TextStyle(
                              color: Colors.cyan[800],
                              fontWeight: FontWeight.bold)))
                ]),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Details()),
            );
          },
          child: Container(
            height: 270,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.fromLTRB(15, 20, 15, 15),
              elevation: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Column(children: <Widget>[
                  FadeInImage(
                      placeholder: AssetImage('assets/images/Loading.gif'),
                      image: AssetImage("assets/images/article-2.jpg"),
                      height: 80,
                      fit: BoxFit.cover),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text("Smartphone stand")),
                  Center(
                      child: Text("000.00",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan[800]))),
                  TextButton(
                      onPressed: () {},
                      child: Text("Añadir a la lista",
                          style: TextStyle(
                              color: Colors.cyan[800],
                              fontWeight: FontWeight.bold)))
                ]),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Details()),
            );
          },
          child: Container(
            height: 270,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.fromLTRB(15, 20, 15, 15),
              elevation: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Column(children: <Widget>[
                  FadeInImage(
                      placeholder: AssetImage('assets/images/Loading.gif'),
                      image: AssetImage("assets/images/article-3.jpg"),
                      height: 80,
                      fit: BoxFit.cover),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text("iPhone 6 \n Gramophone Horn")),
                  Center(
                      child: Text("000.00",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan[800]))),
                  TextButton(
                      onPressed: () {},
                      child: Text("Añadir a la lista",
                          style: TextStyle(
                              color: Colors.cyan[800],
                              fontWeight: FontWeight.bold)))
                ]),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Details()),
            );
          },
          child: Container(
            height: 270,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.fromLTRB(15, 20, 15, 15),
              elevation: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Column(children: <Widget>[
                  FadeInImage(
                      placeholder: AssetImage('assets/images/Loading.gif'),
                      image: AssetImage("assets/images/article-4.jpg"),
                      height: 80,
                      fit: BoxFit.cover),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                          "Maceta de pared \n flotante diseño \n Nube autoregado")),
                  Center(
                      child: Text("000.00",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan[800]))),
                  TextButton(
                      onPressed: () {},
                      child: Text("Añadir a la lista",
                          style: TextStyle(
                              color: Colors.cyan[800],
                              fontWeight: FontWeight.bold)))
                ]),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Details()),
            );
          },
          child: Container(
            height: 270,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.fromLTRB(15, 20, 15, 15),
              elevation: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Column(children: <Widget>[
                  FadeInImage(
                      placeholder: AssetImage('assets/images/Loading.gif'),
                      image: AssetImage("assets/images/article-5.jpg"),
                      height: 80,
                      fit: BoxFit.cover),
                  Container(
                      padding: EdgeInsets.all(10), child: Text("Mini octopus")),
                  Center(
                      child: Text("000.00",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan[800]))),
                  TextButton(
                      onPressed: () {},
                      child: Text("Añadir a la lista",
                          style: TextStyle(
                              color: Colors.cyan[800],
                              fontWeight: FontWeight.bold)))
                ]),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
