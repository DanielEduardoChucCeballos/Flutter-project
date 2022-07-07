import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  List<String> items = [
    "PLA",
    "ABS",
    "PET",
  ];
  int _value = 0;
  int _valueA = 0;
  int _valueB = 0;

  String? selectedItem = "PLA";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ITEM"),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Form(
            child: ListView(children: <Widget>[
              title(),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Nombre",
                    border:
                        OutlineInputBorder() /* (borderRadius: BorderRadius.all(Radius.circular(20))) */
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Apellido",
                    border:
                        OutlineInputBorder() /* (borderRadius: BorderRadius.all(Radius.circular(20))) */
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Nombre de la empresa",
                    border:
                        OutlineInputBorder() /* (borderRadius: BorderRadius.all(Radius.circular(20))) */
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Dirección",
                    border:
                        OutlineInputBorder() /* (borderRadius: BorderRadius.all(Radius.circular(20))) */
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Email",
                    border:
                        OutlineInputBorder() /* (borderRadius: BorderRadius.all(Radius.circular(20))) */
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Teléfono",
                    border:
                        OutlineInputBorder() /* (borderRadius: BorderRadius.all(Radius.circular(20))) */
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              titleTwo(),
              //*File Picker
              ElevatedButton(
                child: Text("Seleccione el archivo"),
                onPressed: null,
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                    labelText: "Descripción del Modelo",
                    border:
                        OutlineInputBorder() /* (borderRadius: BorderRadius.all(Radius.circular(20))) */
                    ),
              ),
              titleThree(),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Altura CM",
                    border:
                        OutlineInputBorder() /* (borderRadius: BorderRadius.all(Radius.circular(20))) */
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                // Only numbers can be entered
                decoration: InputDecoration(
                    labelText: "Longitud CM",
                    border:
                        OutlineInputBorder() /* (borderRadius: BorderRadius.all(Radius.circular(20))) */
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Anchura CM",
                    border:
                        OutlineInputBorder() /* (borderRadius: BorderRadius.all(Radius.circular(20))) */
                    ),
              ),

              SizedBox(
                height: 15,
                width: 240,
              ),

              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                    labelText: "Material",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(width: 3, color: Colors.grey))),
                value: selectedItem,
                items: items
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: TextStyle(fontSize: 20),
                          ),
                        ))
                    .toList(),
                onChanged: (item) => setState(() => selectedItem = item),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Relleno",
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () => setState(() => _value = 0),
                child: Container(
                  height: 150,
                  width: 150,
                  color: _value == 0 ? Colors.grey : Colors.transparent,
                  child: Image.asset(
                    "assets/images/relleno-1.jpg",
                  ),
                ),
              ),
              Text(
                "Relleno 20 - 30",
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              SizedBox(width: 4),
              GestureDetector(
                onTap: () => setState(() => _value = 1),
                child: Container(
                  height: 150,
                  width: 150,
                  color: _value == 1 ? Colors.grey : Colors.transparent,
                  child: Image.asset(
                    "assets/images/relleno-2.jpg",
                  ),
                  /*  */
                ),
              ),
              Text(
                "Relleno 50 - 60",
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              GestureDetector(
                onTap: () => setState(() => _value = 2),
                child: Container(
                  height: 150,
                  width: 150,
                  color: _value == 2 ? Colors.grey : Colors.transparent,
                  child: Image.asset(
                    "assets/images/relleno-3.jpg",
                  ),
                ),
              ),
              Text(
                "Relleno 90 - 100",
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Acabado",
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () => setState(() => _valueA = 0),
                child: Container(
                  height: 150,
                  width: 150,
                  color: _valueA == 0 ? Colors.grey : Colors.transparent,
                  child: Image.asset(
                    "assets/images/calidad-1.jpg",
                  ),
                  /*  */
                ),
              ),
              Text(
                "Fino",
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              GestureDetector(
                onTap: () => setState(() => _valueA = 1),
                child: Container(
                  height: 150,
                  width: 150,
                  color: _valueA == 1 ? Colors.grey : Colors.transparent,
                  child: Image.asset(
                    "assets/images/calidad-2.jpg",
                  ),
                  /*  */
                ),
              ),
              Text(
                "Medio",
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              GestureDetector(
                onTap: () => setState(() => _valueA = 2),
                child: Container(
                  height: 150,
                  width: 150,
                  color: _valueA == 2 ? Colors.grey : Colors.transparent,
                  child: Image.asset(
                    "assets/images/calidad-3.jpg",
                  ),
                  /*  */
                ),
              ),
              Text(
                "Rugoso",
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              Text(
                "¿A qué figura se parece más tu modelo?",
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => setState(() => _valueB = 0),
                    child: Container(
                      height: 175,
                      width: 175,
                      color: _valueB == 0 ? Colors.grey : Colors.transparent,
                      child: Image.asset("assets/images/pyramid.png"),
                    ),
                  ),
                  SizedBox(width: 4),
                  GestureDetector(
                    onTap: () => setState(() => _valueB = 1),
                    child: Container(
                      height: 175,
                      width: 175,
                      color: _valueB == 1 ? Colors.grey : Colors.transparent,
                      child: Image.asset(
                        "assets/images/block.png",
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 20, 141, 24),
                ),
                child: Text("Solocitar Cotización"),
              ),
              ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 182, 36, 26),
                ),
                child: Text("¿Quieres continuar con la compra?"),
              )
            ]),
          ),
        ));
  }
}

title() {
  return Padding(
    padding: EdgeInsets.all(10.0),
    child: Text(
      "Datos Personales",
      style: TextStyle(
        fontSize: 25,
      ),
      textAlign: TextAlign.center,
    ),
  );
}

titleTwo() {
  return Padding(
    padding: EdgeInsets.all(10.0),
    child: Text(
      "Descripción del Modelo",
      style: TextStyle(
        fontSize: 20,
      ),
      textAlign: TextAlign.center,
    ),
  );
}

titleThree() {
  return Padding(
    padding: EdgeInsets.all(10.0),
    child: Text(
      "Detalles del Producto",
      style: TextStyle(
        fontSize: 20,
      ),
      textAlign: TextAlign.center,
    ),
  );
}
