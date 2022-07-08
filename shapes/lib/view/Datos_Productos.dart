class Datos_Productos {
  final String name;
  final String slug;
  final String description;
  final String price;
  final String quantity;
  final String status;

  Datos_Productos({
    required this.name,
    required this.slug,
    required this.description,
    required this.price,
    required this.quantity,
    required this.status,
  });

  factory Datos_Productos.fromJson(Map<String, dynamic> json) {
    return Datos_Productos(
      name: json["name"],
      slug: json["slug"],
      description: json["description"],
      price: json["price"],
      quantity: json["quantity"],
      status: json["status"],
    );
  }
}
