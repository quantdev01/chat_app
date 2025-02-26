class CountryModel {
  String name;
  String image;
  String dial_code;
  CountryModel({
    required this.name,
    required this.image,
    required this.dial_code,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) {
    return CountryModel(
      name: json['name'],
      image: json['image'],
      dial_code: json['dial_code'],
    );
  }
}
