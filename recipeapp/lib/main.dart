import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipeapp/provider/userProvider.dart';
import 'LoginPage.dart';
import 'SignupPage.dart';
import 'HomePage.dart';
import 'FavouritePage.dart';
import 'SearchPage.dart';
import 'ProfilePage.dart';

void main() {
  runApp(ChangeNotifierProvider<userProvider>(
    create: (context) => userProvider(),
    child:
        MaterialApp(debugShowCheckedModeBanner: false, home: MyApp(), routes: {
      '/login': (context) => LoginPage(),
      '/signup': (context) => SignUp(),
      '/homePage': (context) => HomePage(),
      '/favouritePage': (context) => FavouritePage(),
      '/searchPage': (context) => SearchPage(),
      '/profilePage': (context) => ProfilePage(),
    }),
  ));
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
