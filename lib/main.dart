import 'package:flutter/material.dart';
import 'package:resturant/screens/account_screen.dart';
import 'package:resturant/screens/search_screen.dart';
import 'package:resturant/widgets/bottom_Nav_Bar.dart';
import './widgets/horizontal_shortcuts.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(Restaurant());
}

class Restaurant extends StatefulWidget {
  @override
  _RestaurantState createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  List<Widget> screens = [
    mainScreen(),
    SearchScreen(),
    accountScreen(),
  ];
  int currentINdex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Restaurant app",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            onTap: (int newIndex) {
              setState(() {
                currentINdex = newIndex;
              });
            },
            type: BottomNavigationBarType.shifting,
            currentIndex: currentINdex,
            selectedItemColor: Colors.deepOrange,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search_sharp), label: 'search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_box_rounded), label: 'account')
            ]),
        body: screens[currentINdex],
      ),
    );
  }
}
