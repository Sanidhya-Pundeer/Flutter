import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    routes: {'/signup': (context) => SignupPage()},
  ));
}

class HomePage extends StatelessWidget {
  //mandatory to extend the stateless widget class
  //builds the application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('First Application'),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  Text('ZOM-E-ZOM', style: TextStyle(fontSize: 29)),
                  SizedBox(
                    height: 30,
                  ),
                  Image.network(
                      'https://images.pexels.com/photos/20285930/pexels-photo-20285930/free-photo-of-a-little-girl-in-a-hat-and-dress-holding-a-basket.jpeg'),
                  TextField(
                    decoration: InputDecoration(labelText: 'Enter your name: '),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(labelText: 'password:  '),
                  ),
                  ElevatedButton(
                      onPressed: () => {},
                      child: Text('login', style: TextStyle(fontSize: 25))),
                  Text('Forgot Password', style: TextStyle(fontSize: 15)),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/signup'),
                    child: Text('New user sign up',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(0, 0, 0, 0.737),
                        )),
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(238, 184, 194, 205)),
                  )
                ],
              ),
            ),
          )),
    );
  }
}

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Signup Page'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Text('SignUp Page', style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    ));
  }
}
