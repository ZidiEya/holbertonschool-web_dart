import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  const String baseUrl = 'https://rickandmortyapi.com/api/character';

  try {
    String url = baseUrl;
    while (url.isNotEmpty) {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final results = data['results'];

        for (var character in results) {
          print(character['name']);
        }

        url = data['info']['next'] ?? '';
      } else {
        throw Exception('Failed to load characters');
      }
    }
  } catch (error) {
    print('error caught: $error');
  }
}
