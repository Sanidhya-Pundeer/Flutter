import 'package:flutter/material.dart';

class UserHome extends StatelessWidget {
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
              width: double.infinity,
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
                    'Lets Choose the best dish for you...',
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
                          child: Row(
                        children: [
                          Container(
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
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                              width: 170,
                              height: 190,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(146, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/10.png',
                                    height: 90,
                                    width: 90,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Hot Dog',
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
                                          '30 mins',
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
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                              width: 170,
                              height: 190,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(146, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/11.png',
                                    height: 90,
                                    width: 90,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Rice Ball',
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
                        ],
                      ))),
                  SizedBox(
                    height: 30,
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                          child: Row(
                        children: [
                          Container(
                            width: 330,
                            height: 150,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(146, 146, 231, 255),
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'Find recipes based\non what already\nhave at home',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Image.asset(
                                        'assets/images/16.png',
                                        height: 90,
                                        width: 130,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Lets tray!',
                                    style: TextStyle(
                                        fontFamily: 'BP', fontSize: 18))
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            width: 330,
                            height: 150,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(146, 202, 146, 255),
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'Find recipes based\non what already\nhave at home',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Image.asset(
                                        'assets/images/16.png',
                                        height: 90,
                                        width: 130,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Lets tray!',
                                  style:
                                      TextStyle(fontFamily: 'BP', fontSize: 18),
                                )
                              ],
                            ),
                          ),
                        ],
                      ))),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                          child: Row(
                        children: [
                          Container(
                              width: 170,
                              height: 190,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(146, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/12.png',
                                    height: 90,
                                    width: 90,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Chicken Wings',
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
                                          '45 mins',
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
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                              width: 170,
                              height: 190,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(146, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/13.png',
                                    height: 90,
                                    width: 90,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Burger',
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
                                          '30 mins',
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
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                              width: 170,
                              height: 190,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(146, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/14.png',
                                    height: 90,
                                    width: 90,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'French Fries',
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
                        ],
                      ))),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
