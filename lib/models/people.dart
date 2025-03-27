class People {
  final String name;
  final String birthYear;
  final String gender;
  final String skinColor;

  People({
    required this.name,
    required this.birthYear,
    required this.gender,
    required this.skinColor,
  });

  factory People.fromJson(Map<String, dynamic> json) {
    return People(
      name: json['name'],
      birthYear: json['birth_year'],
      gender: json['gender'],
      skinColor: json['skin_color'],
    );
  }
}
