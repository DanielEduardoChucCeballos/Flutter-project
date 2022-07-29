class Datos_Productos {
  final String name;
  final String image;
  final String description;
  final String price;
  final String quantity;
  final String status;

  Datos_Productos({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.quantity,
    required this.status,
  });

  factory Datos_Productos.fromJson(Map<String, dynamic> json) {
    return Datos_Productos(
      name: json["name"],
      image: json["image"],
      description: json["description"],
      price: json["price"],
      quantity: json["quantity"],
      status: json["status"],
    );
  }
}
