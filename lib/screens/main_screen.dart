import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:resturant/screens/account_screen.dart';
import 'package:resturant/screens/search_screen.dart';
import 'package:resturant/widgets/horizontal_shortcuts.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({super.key});

  static const String screenRoute =
      'main_screen'; //this is for routin the screens

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Builder(
        builder: (context) => Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Color.fromRGBO(254, 195, 165, 1),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 50, left: 20),
                            child: Row(
                              children: [
                                Text(
                                  "delivering to",
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Text(
                                  "(Rasty)داخیلی عەدالە ",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 70),
                            child: Row(
                              children: [
                                Text(
                                  "Super Saver",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Eat Well, pay less!",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 17, bottom: 10),
                            child: Row(
                              children: [
                                OutlinedButton(
                                  style: ButtonStyle(
                                    side: MaterialStateProperty.all<BorderSide>(
                                      BorderSide(
                                        color: Colors.orange,
                                      ),
                                    ),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                    shape: MaterialStateProperty.all<
                                        OutlinedBorder>(
                                      ContinuousRectangleBorder(
                                        borderRadius: BorderRadius.circular(22),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Order now",
                                    style: TextStyle(color: Colors.orange),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 45, top: 115),
                        child: Image.asset(
                          "assets/images/discount.png",
                          height: 150,
                          width: 150,
                          alignment: Alignment.bottomRight,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Row(
                    //this is the row that contains three boxes burger under the above orange container
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              //this is the biggest container in left
                              width: 200,
                              height: 170,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(245, 245, 245, 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 19, top: 20),
                                      child: Text(
                                        "Food",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 20, left: 4),
                                      child: Image.asset(
                                        "assets/images/burger.png",
                                        width: 135,
                                        height: 150,
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14, top: 10),
                        child: Column(
                          //this is for the first in right side
                          children: [
                            Container(
                              width: 150,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(245, 245, 245, 1),
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 10),
                                        child: Text(
                                          'talabat\nmart ',
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Container(
                                        height: 20,
                                        width: 59,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.orange),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 4, top: 1.9),
                                          child: Text('20 mins',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 10),
                                        child: Image.asset(
                                          'assets/images/mart.png',
                                          height: 60,
                                          width: 60,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                width: 150,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(245, 245, 245, 1),
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Text(
                                        'Coffee',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 21),
                                      child: Image.asset(
                                          'assets/images/coffee.png',
                                          height: 55,
                                          width: 55),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 10),
                  child: Text(
                    "Shortcuts",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14, left: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        horizontalScrollShortcuts(
                            textunder1: "  Past",
                            textunder2: "   Orders",
                            icon: Icons.list_alt_outlined),
                        horizontalScrollShortcuts(
                          textunder1: "  Best",
                          textunder2: "   Sellers",
                          icon: Icons.star,
                        ),
                        horizontalScrollShortcuts(
                            textunder1: "  Super",
                            textunder2: "   Saver",
                            icon: Icons.discount),
                        horizontalScrollShortcuts(
                            textunder1: "  Free",
                            textunder2: "   Delivery",
                            icon: Icons.delivery_dining),
                        horizontalScrollShortcuts(
                            textunder1: "  Top",
                            textunder2: "   Choice",
                            icon: Icons.star),
                        horizontalScrollShortcuts(
                            textunder1: "  BOGO", icon: Icons.plus_one_rounded),
                        horizontalScrollShortcuts(
                            textunder1: "  Desserts",
                            icon: Icons.local_drink_rounded),
                        horizontalScrollShortcuts(
                            textunder1: "Fast Food",
                            rightpadding: 15,
                            icon: Icons.set_meal_outlined),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
