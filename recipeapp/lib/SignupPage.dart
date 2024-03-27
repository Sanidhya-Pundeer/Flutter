import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUp();
}

class _SignUp extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
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
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Center(
                              child: Container(
                            width: 280,
                            child: Row(
                              children: [
                                Flexible(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        labelText: 'First Name: '),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Enter some text';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Flexible(
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                          labelText: 'Last Name: '),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Enter some text';
                                        }
                                        return null;
                                      }),
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
                                  TextFormField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          labelText: 'Enter your password: ')),
                                  SizedBox(height: 10),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          Navigator.pushNamed(
                                              context, '/homePage');
                                        } else {
                                          Visibility(
                                            visible: !_formKey.currentState!
                                                .validate(),
                                            child: Text(
                                              'Please fix the errors in your form.',
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                          );
                                        }
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color.fromRGBO(
                                              26, 126, 65, 0.612),
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
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
