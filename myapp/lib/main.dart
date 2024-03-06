import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
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
            backgroundColor: Colors.blue,
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
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/signup'),
                    child: Text('New user sign up',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(0, 0, 0, 0.737),
                        )),
                    style: ElevatedButton.styleFrom(
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
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Signup Page'),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Center(
                      child: Text(
                    'Register With Us to get started...',
                    style: TextStyle(fontSize: 20),
                  )),
                  SizedBox(height: 20),
                  TextField(
                      decoration: InputDecoration(
                          labelText: 'Enter your first name: ')),
                  SizedBox(height: 20),
                  TextField(
                      decoration:
                          InputDecoration(labelText: 'Enter your last name: ')),
                  SizedBox(height: 20),
                  TextField(
                      decoration:
                          InputDecoration(labelText: 'Enter your email: ')),
                  SizedBox(height: 20),
                  TextField(
                      obscureText: true,
                      decoration:
                          InputDecoration(labelText: 'Enter your password: ')),
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () => {},
                      child: Container(
                        child: Row(children: [
                          Image.network(
                            'https://cdn.iconscout.com/icon/free/png-256/free-google-1772223-1507807.png',
                            height: 25,
                          ),
                          Text('   Google')
                        ]),
                        width: 90,
                      )),
                  ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(400, 30),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                          backgroundColor: Color.fromRGBO(7, 106, 244, 0.612),
                          foregroundColor: Colors.white),
                      child: Text(
                        'Register',
                        style: TextStyle(fontSize: 20),
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
