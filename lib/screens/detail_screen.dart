import 'package:api_star_wars/models/people.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final People people;

  const DetailScreen(this.people, {super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final people = widget.people;
    return Scaffold(
      appBar: AppBar(
        title: Text(people.name),
        centerTitle: true,
      ),
      body: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name: ${people.name}", style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 8),
              Text("Birthday: ${people.birthYear}", style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 8),
              Text("Gender: ${people.gender}", style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 8),
              Text("Skin Color: ${people.skinColor}", style: const TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
