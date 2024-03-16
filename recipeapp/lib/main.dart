import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp(), routes: {
    '/login': (context) => LoginPage(),
    '/signup': (context) => SignupPage(),
    '/homePage': (context) => HomePage(),
  }));
}

class MyApp extends StatelessWidget {
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
            padding: EdgeInsets.all(20),
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 244, 236, 216)),
            child: Column(
              children: [
                Text('Reciply',
                    style: TextStyle(fontFamily: 'BP', fontSize: 35.0)),
                SizedBox(
                  height: 15,
                ),
                Image.asset('assets/images/1.png'),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 250,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Container(
                            child: Column(
                          children: [
                            Text('Millions of recipes,',
                                style: TextStyle(
                                  fontSize: 15.0,
                                )),
                            Text('Come join us and start cooking.',
                                style: TextStyle(
                                  fontSize: 15.0,
                                ))
                          ],
                        )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    children: [
                      ElevatedButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/login'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromRGBO(26, 126, 65, 0.612),
                              foregroundColor: Colors.white),
                          child: Container(
                            width: 200,
                            child: Row(
                              children: [Text('        Continue with Email')],
                            ),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/homePage'),
                          child: Container(
                            width: 200,
                            child: Row(
                              children: [
                                Image.network(
                                  'https://w7.pngwing.com/pngs/664/673/png-transparent-apple-logo-iphone-computer-apple-logo-company-heart-logo-thumbnail.png',
                                  height: 25,
                                  width: 25,
                                ),
                                Text('   Continue with Apple')
                              ],
                            ),
                          )),
                      SizedBox(height: 10),
                      ElevatedButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/homePage'),
                          child: Container(
                            width: 200,
                            child: Row(
                              children: [
                                Image.network(
                                  'https://cdn.iconscout.com/icon/free/png-256/free-google-1772223-1507807.png',
                                  height: 25,
                                  width: 25,
                                ),
                                Text('   Continue with Google')
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('OR'),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/signup'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(26, 126, 65, 0.612),
                        foregroundColor: Colors.white),
                    child: Container(
                      width: 200,
                      child: Row(
                        children: [Text('                      Register')],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 5,
            backgroundColor: Color.fromARGB(255, 244, 236, 216),
          ),
          body: SingleChildScrollView(
            child: Container(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 244, 236, 216)),
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/4.png',
                          height: 35,
                          width: 35,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Hello,',
                          style:
                              TextStyle(color: Color.fromARGB(218, 90, 89, 89)),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Alicia',
                          style: TextStyle(fontFamily: 'BP'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Lets Choose the best dish for you',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(0),
                        width: 300,
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: '',
                              icon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        'assets/images/6.png',
                        height: 25,
                        width: 25,
                      )
                    ],
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                        child: Row(children: [
                      ElevatedButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/homePage'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromRGBO(26, 126, 65, 0.612),
                              foregroundColor: Colors.white),
                          child: Container(
                            width: 70,
                            child: Row(
                              children: [
                                Text(
                                  'Breakfast',
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/homePage'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromRGBO(26, 126, 65, 0.612),
                              foregroundColor: Colors.white),
                          child: Container(
                            width: 60,
                            child: Row(
                              children: [
                                Text(
                                  '  Lunch',
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/homePage'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromRGBO(9, 127, 186, 0.631),
                              foregroundColor: Colors.white),
                          child: Container(
                            width: 60,
                            child: Row(
                              children: [
                                Text(
                                  '  Brunch',
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/homePage'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromRGBO(26, 126, 65, 0.612),
                              foregroundColor: Colors.white),
                          child: Container(
                            width: 60,
                            child: Row(
                              children: [
                                Text(
                                  '  Dinner',
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/homePage'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromRGBO(26, 126, 65, 0.612),
                              foregroundColor: Colors.white),
                          child: Container(
                            width: 60,
                            child: Row(
                              children: [
                                Text(
                                  '  Snacks',
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                          )),
                    ])),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                        width: 170,
                        height: 190,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(146, 255, 255, 255),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/7.png',
                              height: 90,
                              width: 90,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Vegetable Bowl',
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    'assets/images/8.png',
                                    height: 15,
                                    width: 15,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '15 mins',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Image.asset('assets/images/9.png',
                                      height: 15, width: 15),
                                  Image.asset('assets/images/9.png',
                                      height: 15, width: 15),
                                  Image.asset('assets/images/9.png',
                                      height: 15, width: 15),
                                  SizedBox(
                                    width: 5,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
