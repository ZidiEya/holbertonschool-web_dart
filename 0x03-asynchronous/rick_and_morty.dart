import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    String url = 'https://rickandmortyapi.com/api/character';

    while (url.isNotEmpty) {
      final response = await http.get(Uri.parse(url));
      final data = jsonDecode(response.body);
      final characters = data['results'];

      for (var character in characters) {
        print(character['name']);
      }

      url = data['info']['next'] ?? '';
    }
  } catch (e) {
    print('error caught: $e');
  }
}
