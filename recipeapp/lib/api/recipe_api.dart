import 'dart:convert';
import 'package:http/http.dart' as http;
import '/model/wine.dart';

class HttpHelper {
  String baseUrl =
      'https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com';
  String endpoint = '/food/wine/dishes';
  String apiKey = '1b7c912494msh9245ac01a6d97eep101661jsnffe8c228ed41';

  Future<Wine> fetchWineDishes(String wineName) async {
    final url = Uri.parse('$baseUrl$endpoint?wine=$wineName');
    final headers = {
      'X-RapidAPI-Key': apiKey,
      'X-RapidAPI-Host': baseUrl,
    };

    try {
      final response = await http.get(url, headers: headers);
      if (response.statusCode == 200) {
        // final result = json.decode(response.body) as Map<String, dynamic>;
        // return result;
        Map<String, dynamic> data = json.decode(response.body);
        Wine wineData = Wine.fromJson(data);
        return wineData;
      } else {
        // Handle non-200 status code gracefully
        throw Exception(
            'API request failed with status code: ${response.statusCode}');
      }
    } catch (error) {
      rethrow;
    }
  }
}
