import 'dart:io';

import 'package:recipeapp/api/recipe_api.dart';

class Wine {
  String wineName = '';
  String text = '';

  String get getText => this.text;

  set setText(String text) => this.text = text;

  get getWineName => this.wineName;

  set setWineName(wineName) => this.wineName = wineName;

  Wine.fromJson(Map<String, dynamic> result) {
    this.text = result['text'];
  }
}

void main() async {
  const wine = 'malbec';
  try {
    HttpHelper help = HttpHelper();
    final wineDishes = await help.fetchWineDishes(wine);
    print(wineDishes); // Process the response data
  } on Exception catch (error) {
    print(
        error); // Display error message to the user (consider using a snackbar or dialog)
  }
}
