import 'dart:io';

import 'package:recipeapp/api/recipe_api.dart';

class Dish {
  String dishName = '';
  String timeToPrepare = '';
  String courseName = '';
  String referenceId = '';
  List<String> ingredients = [];
  List<String> equipment = [];

  Dish(this.dishName, this.timeToPrepare, this.courseName, this.equipment,
      this.ingredients, this.referenceId);

  Dish.fromJson(Map<String, dynamic> dishes) {
    this.dishName = dishes['dish_Name'] ?? '';
    this.timeToPrepare = dishes['time_to_prepare'] ?? '';
    this.courseName = dishes['course_name'] ?? '';
    this.ingredients = dishes['ingredients']?.split(',') ?? [];
    this.equipment = dishes['equipment']?.split(',') ?? [];
    this.referenceId = dishes['reference_id'] ?? '';
  }
}

void main() async {
  HttpHelper h = HttpHelper();
  List<Dish> dishes = await h.fetchDishes('caesar salad');

  dishes.forEach((dish) {
    // Print all properties of each dish
    print('Dish Name: ${dish.dishName}');
    print('Time to Prepare: ${dish.timeToPrepare}');
    print('Course Name: ${dish.courseName}');
    print('Ingredients: ${dish.ingredients}');
    print('Equipment: ${dish.equipment}');
    print('Reference ID: ${dish.referenceId}\n');
  });
}
