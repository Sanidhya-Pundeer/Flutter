import 'package:ecommerce/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SignInPage(),
    routes: {
      '/login': (context) => HomePage(),
    },
  ));
}

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('E-Commerce Application'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Container(
              height: 2000,
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  Container(
                    width: 200,
                    child: TextField(
                        decoration: InputDecoration(hintText: 'phone number')),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(hintText: 'password'),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/login'),
                      child: Text('Sign In')),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
