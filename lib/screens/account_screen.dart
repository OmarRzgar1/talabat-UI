import 'package:flutter/material.dart';
import 'package:resturant/screens/main_screen.dart';
import 'package:resturant/screens/search_screen.dart';
import 'package:flutter_circle_flags_svg/flutter_circle_flags_svg.dart';

class accountScreen extends StatefulWidget {
  static const String screenRoute = 'account_screen';

  @override
  State<accountScreen> createState() => _accountScreenState();
}

class _accountScreenState extends State<accountScreen> {
  // this is forroutin the screens

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 70,
          ),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 250, 204, 135),
              radius: 30,
              child: Center(
                child: Text(
                  'O',
                  style: TextStyle(fontSize: 35, color: Colors.black),
                ),
              ),
            ),
            trailing: Icon(
              Icons.settings_outlined,
              color: Colors.black,
              size: 30,
            ),
            title: Text('Omar Rzgar Rasheed'),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                children: [
                  CircleFlag('iq', size: 17),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('iraq'),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 15),
          child: ListTile(
            leading: Icon(Icons.menu),
            title: Text(
              'Your orders',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        lists(Icon(Icons.discount), 'offers'),
        lists(Icon(Icons.notifications_none_rounded), 'notifications'),
        lists(Icon(Icons.assignment_outlined), 'vouchers'),
        lists(Icon(Icons.help_outline_rounded), 'get help'),
        lists(Icon(Icons.info_outline_rounded), 'About'),
      ],
    ));
  }
}

Widget lists(Icon icon, String title) {
  return Padding(
    padding: const EdgeInsets.only(top: 10, left: 15),
    child: ListTile(
      leading: icon,
      title: Text(
        '$title',
        style: TextStyle(color: Colors.black),
      ),
    ),
  );
}
