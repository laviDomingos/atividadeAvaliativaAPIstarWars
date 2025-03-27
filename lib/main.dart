import 'package:api_star_wars/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const StarWarsApp());
}

class StarWarsApp extends StatelessWidget {
  const StarWarsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Star Wars',
      theme: ThemeData(
        primaryColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}
