import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
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
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/3.png',
                          height: 250,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Getting started!',
                    style: TextStyle(fontSize: 30, fontFamily: 'BP'),
                  ),
                  SizedBox(height: 30),
                  Center(
                      child: Container(
                    width: 280,
                    child: Row(
                      children: [
                        Flexible(
                          child: TextField(
                              decoration:
                                  InputDecoration(labelText: 'First Name: ')),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: TextField(
                              decoration:
                                  InputDecoration(labelText: 'Last Name: ')),
                        )
                      ],
                    ),
                  )),
                  SizedBox(height: 10),
                  Center(
                    child: Container(
                      width: 280,
                      child: Column(
                        children: [
                          TextField(
                              decoration: InputDecoration(
                                  labelText: 'Enter your email: ')),
                          SizedBox(height: 10),
                          TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelText: 'Enter your password: ')),
                          SizedBox(height: 10),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: () =>
                                  Navigator.pushNamed(context, '/homePage'),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(26, 126, 65, 0.612),
                                  foregroundColor: Colors.white),
                              child: Container(
                                width: 240,
                                child: Row(
                                  children: [
                                    Text(
                                      '                         Sign Up',
                                      style: TextStyle(fontSize: 15),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
