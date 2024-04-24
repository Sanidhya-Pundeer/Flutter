import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipeapp/HomePage.dart';
import 'package:recipeapp/model/Users.dart';
import 'package:recipeapp/provider/userProvider.dart';

// class SignUpPage extends StatefulWidget {
//   const SignUpPage({super.key});

//   @override
//   State<SignUpPage> createState() => _SignUp();
// }

class SignUp extends StatelessWidget {
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
              width: double.infinity,
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
                      child: Consumer<userProvider>(
                        builder: (context, provider, child) {
                          return Container(
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
                                            labelText: 'User Name: '),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Enter some text';
                                          }
                                          provider.user.userName = value;
                                          // u.userName = value;
                                        },
                                      ),
                                    ),
                                    // SizedBox(
                                    //   width: 20,
                                    // ),
                                    // Flexible(
                                    //   child: TextFormField(
                                    //       decoration: InputDecoration(
                                    //           labelText: 'Last Name: '),
                                    //       validator: (value) {
                                    //         if (value == null || value.isEmpty) {
                                    //           return 'Enter some text';
                                    //         }
                                    //         u.l_name = value;
                                    //       }),
                                    // )
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
                                              labelText:
                                                  'Enter your password: ')),
                                      SizedBox(height: 10),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      ElevatedButton(
                                          onPressed: () {
                                            if (_formKey.currentState!
                                                .validate()) {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        HomePage(),
                                                  ));
                                            } else {
                                              print('error in form');
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
                                                  style:
                                                      TextStyle(fontSize: 15),
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
                          ));
                        },
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
