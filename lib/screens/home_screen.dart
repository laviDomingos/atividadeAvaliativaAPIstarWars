import 'package:flutter/material.dart';
import 'package:api_star_wars/models/people.dart';
import 'package:api_star_wars/screens/detail_screen.dart';
import 'package:api_star_wars/services/sw_api_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<People>> _futurePeoples;
  final ApiService _apiService = ApiService();

  @override
  void initState() {
    super.initState();
    _futurePeoples = _apiService.fetchPeoples();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Star Wars'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<People>>(
        future: _futurePeoples,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erro: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final peoples = snapshot.data!;
            return ListView.builder(
              itemCount: peoples.length,
              itemBuilder: (context, index) {
                final people = peoples[index];
                return GestureDetector(
                  child: Card(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ListTile(
                      onTap: () {
                        print("Clicou no personagem: ${people.name}");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(people),
                          ),
                        );
                      },
                      leading: Icon(Icons.person),
                      title: Text(people.name),
                      subtitle: Text('Gênero: ${people.gender}'), 
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(child: Text('Nenhum personagem encontrado.'));
          }
        },
      ),
    );
  }
}
