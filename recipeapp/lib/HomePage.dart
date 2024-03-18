import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:recipeapp/FavouritePage.dart';
import 'package:recipeapp/ProfilePage.dart';
import 'package:recipeapp/SearchPage.dart';
import 'Home.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _pages = [
    UserHome(),
    SearchPage(),
    FavouritePage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              toolbarHeight: 5,
              backgroundColor: Color.fromARGB(255, 244, 236, 216),
            ),
            body: _pages[_selectedIndex],
            bottomNavigationBar: Container(
              color: Color.fromRGBO(26, 126, 65, 0.612),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: GNav(
                    selectedIndex: _selectedIndex,
                    onTabChange: _navigateBottomBar,
                    gap: 10,
                    backgroundColor: Color.fromRGBO(26, 126, 65, 0.612),
                    color: Colors.white,
                    activeColor: Colors.white,
                    padding: EdgeInsets.all(16),
                    tabBackgroundColor: Color.fromRGBO(68, 166, 106, 0.612),
                    tabs: [
                      GButton(
                        icon: Icons.home_rounded,
                        text: 'Home',
                        semanticLabel: 'HomePage',
                      ),
                      GButton(
                        icon: Icons.search_rounded,
                        text: 'Search',
                      ),
                      GButton(
                        icon: Icons.favorite_border_rounded,
                        text: 'Favourites',
                      ),
                      GButton(
                        icon: Icons.perm_identity_rounded,
                        text: 'Profile',
                      )
                    ]),
              ),
            )));
  }
}
