import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/people.dart';

class ApiService {
  static const String baseUrl = 'https://swapi.dev/api';

  Future<List<People>> fetchPeoples() async {
    final response = await http.get(Uri.parse('$baseUrl/people'));
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List results = data['results'];
      return results.map((json) => People.fromJson(json)).toList();
    } else {
      throw Exception('Falha ao carregar os personagens');
    }
  }
}
