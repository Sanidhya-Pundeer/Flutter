import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    ));
  }
}
