import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    String url = 'https://rickandmortyapi.com/api/character';

    while (url.isNotEmpty) {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode != 200) {
        throw 'Failed to load characters. Status code: ${response.statusCode}';
      }

      final data = jsonDecode(response.body);
      final characters = data['results'];

      for (var character in characters) {
        print(character['name']);
      }

      url = data['info']['next'] ?? '';
    }
  } catch (error) {
    print('error caught: $error');
  }
}
