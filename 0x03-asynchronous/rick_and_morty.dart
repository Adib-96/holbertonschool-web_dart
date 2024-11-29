import 'package:http/http.dart' as http;
import 'dart:convert';
import '5-util.dart';

Future<void> printRmCharacters() async {
  try {
    var response =
        await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      List characters = data['results'];
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      print('Failed to load characters');
    }
  } catch (e) {
    print('error caught: $e');
  }
}
