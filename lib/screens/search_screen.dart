import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({
    Key? key,
  }) : super(key: key);

  static const String screenRoute =
      'search_screen'; //this is for routing the screens
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 13, top: 55, right: 13),
                  child: Theme(
                    data: ThemeData(
                      primaryColor: Colors.deepOrange,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search food, groceries, and more',
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.deepOrange,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.deepOrange,
                            width: 2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.deepOrange,
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.deepOrange,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                TabBar(
                  indicatorColor: Colors.deepOrange,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                        child: Text(
                      'Food',
                      style: TextStyle(color: Colors.black),
                    )),
                    Tab(
                        child: Text(
                      'Grocires',
                      style: TextStyle(color: Colors.black),
                    )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
