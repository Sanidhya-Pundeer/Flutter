import 'dart:io';

import 'package:recipeapp/api/recipe_api.dart';

class Dish {
  String dishName = '';
  String timeToPrepare = '';
  String courseName = '';
  String referenceId = '';
  List<dynamic> ingredients = [];
  List<dynamic> equipment = [];

  Dish(this.dishName, this.timeToPrepare, this.courseName, this.equipment,
      this.ingredients, this.referenceId);

  Dish.fromJson(List<dynamic> dishes) {
    this.dishName = dishes[0]['item']['dish_name'] ?? '';
    this.timeToPrepare = dishes[0]['item']['time_to_prepare'] ?? '';
    this.courseName = dishes[0]['item']['course_name'] ?? '';
    this.ingredients = dishes[0]['item']['ingredients'] ?? [];
    this.equipment = dishes[0]['item']['equipment'] ?? [];
    this.referenceId = dishes[0]['item']['reference_id'] ?? '';
  }
}

void main() async {
  HttpHelper h = HttpHelper();
  h.fetchDishes('spaghetti');
  // dishes.forEach((dish) {
  //   // Print all properties of each dish
  //   print('Dish Name: ${dish.dishName}');
  //   print('Time to Prepare: ${dish.timeToPrepare}');
  //   print('Course Name: ${dish.courseName}');
  //   print('Ingredients: ${dish.ingredients}');
  //   print('Equipment: ${dish.equipment}');
  //   print('Reference ID: ${dish.referenceId}\n');
  // });
}
