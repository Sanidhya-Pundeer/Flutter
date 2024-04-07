import 'package:flutter/material.dart';
import 'package:recipeapp/model/Dish.dart';

class ShowDishes extends StatelessWidget {
  Dish d1 = Dish();

  ShowDishes({super.key, required this.d1});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(146, 255, 255, 255),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                Text('Alicia Smith',
                    style: TextStyle(fontSize: 29, fontFamily: 'BP')),
                SizedBox(
                  height: 30,
                ),
                Text('${d1.dishName}')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
