import 'dart:io';

import 'package:recipeapp/api/recipe_api.dart';

class Ndish {
  String dishName = '';
  String timeToPrepare = '';
  String courseName = '';
  String referenceId = '';
  List<dynamic> ingredients = [];
  List<dynamic> equipment = [];

  Ndish();

  Ndish.fromJson(List<dynamic> dishes) {
    this.dishName = dishes[0]['item']['dish_name'] ?? '';
    this.timeToPrepare = dishes[0]['item']['time_to_prepare'] ?? '';
    this.courseName = dishes[0]['item']['course_name'] ?? '';
    this.ingredients = dishes[0]['item']['ingredients'] ?? [];
    this.equipment = dishes[0]['item']['equipment'] ?? [];
    this.referenceId = dishes[0]['item']['reference_id'] ?? '';
  }
}

// void main() async {
//   HttpHelper h = HttpHelper();
//   h.fetchDishes('spaghetti');
//   
// }
