import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Eligibility Checker'),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Row(
              children: [Text('Enter your age')],
            ),
          ),
        ),
      ),
    ));
  }
}
