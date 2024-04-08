import 'package:flutter/material.dart';
import 'package:recipeapp/model/Ndish.dart';

class ShowDishes extends StatelessWidget {
  Ndish d1 = Ndish();

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
                Text('${d1.dishName}',
                    style: TextStyle(fontSize: 29, fontFamily: 'BP')),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(border: Border.all()),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                          child: Row(children: [
                        Text(
                          'Time to prepare : 30 ',
                          style: TextStyle(fontSize: 15, fontFamily: 'BP'),
                        ),
                        Text('${d1.timeToPrepare}')
                      ])),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
