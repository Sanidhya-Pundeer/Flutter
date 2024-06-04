import 'package:flutter/material.dart';
import 'package:testingapp/BookingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Testing page for Hindgreco"),
        ),
        body: SingleChildScrollView(
          child: Row(
            children: [
              ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/googlemap'),
                  child: Text("Location"))
            ],
          ),
        ),
      ),
    ));
  }
}
