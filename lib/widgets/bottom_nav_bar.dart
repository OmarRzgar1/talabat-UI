import 'package:flutter/material.dart';

class bottomNavBar extends StatelessWidget {
  late int currentIndex;
  late ValueChanged<int> onTaP;
  bottomNavBar({required this.currentIndex, required this.onTaP});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => BottomNavigationBar(
          onTap: onTaP,
          type: BottomNavigationBarType.shifting,
          currentIndex: currentIndex,
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_sharp), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box_rounded), label: 'account')
          ]),
    );
  }
}
