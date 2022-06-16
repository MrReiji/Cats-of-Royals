import 'CatPicture.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

Future<CatPicture> fetchCatPicture() async {
  final response =
      await http.get(Uri.parse('https://api.thecatapi.com/v1/images/search'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return CatPicture.fromJson(jsonDecode(response.body)[0]);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load picture');
  }
}
