class People {
  final String name;
  final String birthYear;
  final String gender;
  final String skinColor;
  final String homeworld;

People({
required this.name,
required this.birthYear,
required this.gender,
required this.skinColor,
required this.homeworld
});


factory People.fromJson(Map<String, dynamic> json) {
    return People(
      name: json['name'],
      birthYear: json['birthYear'],
      gender: json['gender'],
      skinColor: json['skinColor'],
      homeworld: json['homeworld']
    );
  }
}