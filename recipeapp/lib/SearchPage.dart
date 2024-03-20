import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: Scaffold(
            appBar: AppBar(
              toolbarHeight: 5,
              backgroundColor: Color.fromARGB(255, 244, 236, 216),
            ),
            body: SingleChildScrollView(
                child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 244, 236, 216)),
                    padding: EdgeInsets.all(25),
                    child: Column(children: [
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
                              style: TextStyle(
                                  color: Color.fromARGB(218, 90, 89, 89)),
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
                      Container(
                          child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(0),
                            width: 310,
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: '',
                                  prefixIcon: Icon(Icons.search),
                                  suffixIcon: Icon(Icons.filter_alt),
                                  filled: true,
                                  fillColor: Color.fromARGB(199, 255, 255, 255),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15))),
                            ),
                          ),
                        ],
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Recipies with ingredients you have at home'),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 400,
                        height: 200,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(146, 255, 255, 255),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            Container(
                              width: 200,
                              child: TextField(),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ])))));
  }
}
