import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/dish.dart';

class HttpHelper {
  String baseUrl = 'https://recipe-by-api-ninjas.p.rapidapi.com';
  String endpoint = '/v1/recipe';
  String apiKey = '1b7c912494msh9245ac01a6d97eep101661jsnffe8c228ed41';

  Future<Dish> fetchDishes(String dishName) async {
    try {
      final headers = {
        'X-RapidAPI-Key': apiKey,
        'X-RapidAPI-Host': baseUrl,
      };

      final params = {'query': dishName}; // Using 'query' as recommended

      final url = Uri.parse(
          'https://recipe-by-api-ninjas.p.rapidapi.com$endpoint?query=$dishName');
      http.Response res = await http.get(url, headers: headers);

      if (res.statusCode == 200) {
        final data = jsonDecode(res.body);
        Dish dish =
            Dish.fromJson(data ?? {}); // Use an empty map if data is null
        return dish;
      } else {
        throw Exception(
            'API request failed with status code: ${res.statusCode}');
      }
    } catch (error) {
      print(error);
      rethrow; // Rethrow the error for further handling (optional)
    }
  }
}

void main() async {
  try {
    HttpHelper h = HttpHelper();
    Dish dish =
        await h.fetchDishes('pasta'); // Use await for asynchronous result
    print(dish.dishName); // Access dish information after successful fetch
  } catch (error) {
    print('Error fetching dishes: $error'); // Handle errors in main
  }
}
