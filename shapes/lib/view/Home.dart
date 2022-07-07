import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shapes/view/Details.dart';
import 'package:shapes/view/Formulario.dart';
import 'package:path/path.dart' as p;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text('Shapes 3D', style: TextStyle(fontSize: 30)),
      )),
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
          category(),
          cursos(),
          courses(),
        ],
      ),
    );
  }
}

image(){
  return CircleAvatar(
  backgroundImage: AssetImage('assets/images/logo.jpeg',),

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

class category extends StatelessWidget {
  const category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Details()),
                    );
                  },
                  child: Container(
                    width: 90,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.asset("assets/images/article-1.jpg"),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Details()),
                    );
                  },
                  child: Container(
                    width: 90,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.asset("assets/images/article-2.jpg"),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Details()),
                    );
                  },
                  child: Container(
                    width: 90,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.asset("assets/images/article-3.jpg"),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Details()),
                    );
                  },
                  child: Container(
                    width: 90,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.asset("assets/images/article-4.jpg"),
                    ),
                  )),
            ),
          ],
        ));
    ;
  }
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
