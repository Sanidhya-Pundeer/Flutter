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
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Image.asset('assets/images/1.jpg'),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 250,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Millions of recipes. Get inspired and start cooking today with Reciply.',
                        style: TextStyle(
                            fontFamily: 'MightySouly', fontSize: 16.0),
                      ),
                      SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
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
                        backgroundColor: Color.fromRGBO(49, 245, 124, 0.612),
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
    throw UnimplementedError();
  }
}

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  Text(
                    'Register With Us to get started...',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  TextField(
                      decoration: InputDecoration(
                          labelText: 'Enter your first name: ')),
                  SizedBox(height: 10),
                  TextField(
                      decoration:
                          InputDecoration(labelText: 'Enter your last name: ')),
                  SizedBox(height: 10),
                  TextField(
                      decoration:
                          InputDecoration(labelText: 'Enter your email: ')),
                  SizedBox(height: 10),
                  TextField(
                      obscureText: true,
                      decoration:
                          InputDecoration(labelText: 'Enter your password: ')),
                  SizedBox(height: 10),
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
    throw UnimplementedError();
  }
}
