import 'package:flutter/material.dart';
import 'package:recipeapp/api/recipe_api.dart';
import 'package:recipeapp/model/Ndish.dart';
import 'package:recipeapp/model/SearchDish.dart';
import 'ShowDishes.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});
  @override
  State<SearchPage> createState() => _SearchPage();
}

SearchDish s = SearchDish();
Ndish d = Ndish();

class _SearchPage extends State<SearchPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.green),
        home: Scaffold(
            appBar: AppBar(
              toolbarHeight: 5,
              backgroundColor: Color.fromARGB(255, 244, 236, 216),
            ),
            body: SingleChildScrollView(
                child: Container(
                    width: double.infinity,
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
                      Form(
                        key: _formKey,
                        child: Center(
                          child: TextFormField(
                            onChanged: (value) {
                              setState(() {
                                s.dish_name = value;
                              });
                            },
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                suffixIcon: Icon(Icons.filter_alt),
                                filled: true,
                                fillColor: Color.fromARGB(199, 255, 255, 255),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15))),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              HttpHelper h = HttpHelper();
                              d = await h.fetchDishes(s.dish_name);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          ShowDishes(d1: d))));
                            } else {
                              print('error');
                            }
                          },
                          child: Text('search')),
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
