import 'package:flutter/material.dart';
import 'searchBar.dart';
import 'history.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Theme(
          data: ThemeData(brightness: Brightness.dark),
          child: Scaffold(
            appBar: AppBar(
                title: Center(
                  child: Text(
                    'Search Bar',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                bottom: PreferredSize(
                    child: SearchBar(),
                    preferredSize: const Size.fromHeight(100))),
            bottomNavigationBar: Container(
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 15,
                    ),
                  ],
                ),
                child: Material(
                  color: Colors.black,
                  child: TabBar(
                      tabs: [
                        Tab(
                          icon: Icon(
                            Icons.home,
                            size: 30,
                          ),
                          text: "Home",
                        ),
                        Tab(
                            icon: Icon(
                              Icons.search,
                              size: 30,
                            ),
                            text: "Search"),
                        Tab(
                            icon: Icon(
                              Icons.arrow_circle_down,
                              size: 30,
                            ),
                            text: "Download"),
                        Tab(
                            icon: Icon(
                              Icons.list,
                              size: 30,
                            ),
                            text: "More"),
                      ],
                      unselectedLabelColor: Colors.grey,
                      labelColor: Colors.white,
                      indicatorColor: Colors.white),
                )),
            body: TabBarView(
              children: [
                Center(
                  child: Text("Home"),
                ),
                Container(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      History(image: 'lib/assets/1.jpg'),
                      History(image: 'lib/assets/2.jfif'),
                      History(image: 'lib/assets/3.jfif'),
                      History(image: 'lib/assets/4.jfif'),
                      History(image: 'lib/assets/5.jfif'),
                      History(image: 'lib/assets/6.jfif'),
                      History(image: 'lib/assets/7.jfif'),
                      History(image: 'lib/assets/8.jfif'),
                      History(image: 'lib/assets/9.jfif'),
                      History(image: 'lib/assets/10.jfif'),
                      History(image: 'lib/assets/11.jfif'),
                      History(image: 'lib/assets/12.jfif'),
                      History(image: 'lib/assets/13.jfif'),
                      History(image: 'lib/assets/14.jfif'),
                      History(image: 'lib/assets/15.jfif'),
                      History(image: 'lib/assets/16.jfif'),
                    ],
                  ),
                ),
                Center(
                  child: Text("Like"),
                ),
                Center(child: Text("Profile")),
              ],
            ),
          ),
        ));
  }
}
