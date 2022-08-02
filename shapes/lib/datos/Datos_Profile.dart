class Datos_Profile {
  final String address;
  final String postal;
  final String country;
  final String city;
  final String phone;


  Datos_Profile({
    required this.address,
    required this.postal,
    required this.country,
    required this.city,
    required this.phone,
  });

  factory Datos_Profile.fromJson(Map<String, dynamic> json) {
    return Datos_Profile(
      address: json["address"],
      postal: json["postal"],
      country: json["country"],
      city: json["city"],
      phone: json["phone"],
    );
  }
}
