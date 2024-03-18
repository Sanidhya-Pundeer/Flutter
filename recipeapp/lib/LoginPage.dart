import 'package:flutter/material.dart';
import 'SignUpPage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 244, 236, 216),
          ),
          body: SingleChildScrollView(
            child: Container(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 244, 236, 216)),
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/2.png',
                      height: 250,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      'Hello, again',
                      style: TextStyle(fontFamily: 'BP', fontSize: 30),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Text('Welcome back, you have been missed!'),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: 250,
                    child: Column(
                      children: [
                        TextField(
                            decoration:
                                InputDecoration(labelText: 'Username : ')),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                            obscureText: true,
                            decoration:
                                InputDecoration(labelText: 'Password : ')),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/homePage'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(26, 126, 65, 0.612),
                          foregroundColor: Colors.white),
                      child: Container(
                        width: 200,
                        child: Row(
                          children: [
                            Text(
                              '                      Login',
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupPage()));
                    },
                    child: Text(
                      'New Here?  Sign Up Now!',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
