import 'package:flutter/material.dart';
import 'package:stateapp/UserModel.dart';
import 'package:stateapp/secondPage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // String name = 'sam';
  @override
  Widget build(BuildContext context) {
    UserModel user = UserModel();

    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('State Management Application'),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: 1200,
            width: double.infinity,
            child: Column(
              children: [
                Text('helo'),
                TextField(
                  decoration: InputDecoration(labelText: 'Enter your name'),
                  onChanged: (value) => {user.name = value},
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondPage(u1: user)));
                    },
                    child: Text('Click to go to next side'))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
