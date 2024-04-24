import 'package:flutter/material.dart';
import 'package:stateapp/UserModel.dart';

class SecondPage extends StatelessWidget {
  UserModel u1 = UserModel();
  SecondPage({required this.u1});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Text('${u1.name}'),
      ),
    );
  }
}
