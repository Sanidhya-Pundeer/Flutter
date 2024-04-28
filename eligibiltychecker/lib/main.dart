import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Eligibility Checker'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Container(
            height: 4000,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Enter your age to continue",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                ),
                TextField(),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: () => {}, child: Text('Submit'))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
