import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/dish.dart';

class HttpHelper {
  String baseUrl = 'http://192.168.1.25:3000'; // Change to your API base URL
  String endpoint = '/api/recipes/search/'; // Change to your API endpoint

  Future<List<Dish>> fetchDishes(String dishName) async {
    try {
      final url = Uri.parse('$baseUrl$endpoint$dishName');
      http.Response res = await http.get(url);
      if (res.statusCode == 200) {
        List<dynamic> data = jsonDecode(res.body);
        List<Dish> dishes = data.map((item) => Dish.fromJson(item)).toList();
        print(dishes);
        return dishes;
      } else {
        throw Exception(
            'API request failed with status code: ${res.statusCode}');
      }
    } catch (error) {
      print(error);
      rethrow;
    }
  }
}
