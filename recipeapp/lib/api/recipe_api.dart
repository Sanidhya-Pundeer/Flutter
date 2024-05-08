import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:recipeapp/model/Ndish.dart';

class HttpHelper {
  String baseUrl = 'http://192.168.56.246:3000'; // Change to your API base URL
  String endpoint = '/api/recipes/search/'; // Change to your API endpoint

  Future<Ndish> fetchDishes(String dishName) async {
    try {
      final url = Uri.parse('$baseUrl$endpoint$dishName');
      http.Response res = await http.get(url);
      if (res.statusCode == 200) {
        List<dynamic> data = jsonDecode(res.body);
        Ndish dishes = Ndish.fromJson(data);
        // print(dishes.ingredients);
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
