import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(146, 255, 255, 255),
          ),
          body: SingleChildScrollView(
            child: Container(
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
                  Text('Look according to your mood...',
                      style: TextStyle(fontSize: 29, fontFamily: 'BP')),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
