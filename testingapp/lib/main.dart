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
          title: Text("Testing page for Hindgreco"),
        ),
        body: SingleChildScrollView(
          child: Row(
            children: [
              ElevatedButton(
                  onPressed: () => {Navigation}, child: Text("Location"))
            ],
          ),
        ),
      ),
    ));
  }
}
