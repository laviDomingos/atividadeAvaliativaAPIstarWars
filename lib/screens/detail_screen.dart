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
          child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Name: ${people.name}", style: const TextStyle(fontSize: 20),),
              Text("Birthday: ${people.birthYear}", style: const TextStyle(fontSize: 20),),
              Text("Gender: ${people.gender}", style: const TextStyle(fontSize: 20), ),
              Text("Skin Color: ${people.skinColor}", style: const TextStyle(fontSize: 20),),
              Text("Homework: ${people.homeworld}", style: const TextStyle(fontSize: 20),)
              ],
            )
          ],
         ) 
        ),
        );
  }
}


 

  

  