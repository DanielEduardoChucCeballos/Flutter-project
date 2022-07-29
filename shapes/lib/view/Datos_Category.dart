class Datos_Category {
  final String name;
  final String description;
  final String icon;


  Datos_Category({
    required this.name,
    required this.description,
    required this.icon,
  });

  factory Datos_Category.fromJson(Map<String, dynamic> json) {
    return Datos_Category(
      name: json["name"],  
      description: json["description"],
      icon: json["icon"],
    );
  }
}
