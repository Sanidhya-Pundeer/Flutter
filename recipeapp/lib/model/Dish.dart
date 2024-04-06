import 'dart:io';

import 'package:recipeapp/api/recipe_api.dart';

class Dish {
  String dishName = '';
  String title = '';
  String courseName = '';

  Dish(this.dishName, this.title, this.courseName);

  Dish.fromJson(Map<String, dynamic> data) {
    this.dishName = data['title'];
  }
}
