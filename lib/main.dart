// import 'dart:html';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:plant_biomass/screens/home.dart';
import 'package:plant_biomass/screens/camera.dart';
import 'package:plant_biomass/screens/market.dart';
import 'package:plant_biomass/screens/profile.dart';
import 'package:plant_biomass/screens/settings.dart';
// import 'package:'
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CameraScreen(),
    MarketScreen(),
    ProfilePage1()
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // void _incrementCounter() {
    //   setState(() {
    //     // This call to setState tells the Flutter framework that something has
    //     // changed in this State, which causes it to rerun the build method below
    //     // so that the display can reflect the updated values. If we changed
    //     // _counter without calling setState(), then the build method would not be
    //     // called again, and so nothing would appear to happen.
    //     _counter++;
    //   });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              // margin: EdgeInsets.only(bottom: 10, top: 10, left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.lightGreen.shade900,
              ),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/logo.jpg'),
              ),
            ),
            ListTile(
              title: const Text('Edit Profile'),

              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      bottomNavigationBar:Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: CurvedNavigationBar(
        backgroundColor: Colors.black,
        color: Colors.teal.shade700.withOpacity(0.3),
        animationDuration: Duration(milliseconds: 200),
        height: 50,
        items: <Widget>[
          Icon(Icons.home,
            color: Colors.white,),
          Icon(Icons.add_a_photo,
              color: Colors.white),
          Icon(Icons.shopping_bag,
            color: Colors.white,),
          Icon(Icons.settings,
            color: Colors.white,),
        ],
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.lightGreen[200],

        onTap: _onItemTapped,
      ),
        ),
    );

  }
}
