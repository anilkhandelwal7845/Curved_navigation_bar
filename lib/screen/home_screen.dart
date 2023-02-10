import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:navigation_bar/screen/first_screen.dart';
import 'package:navigation_bar/screen/forth_screen.dart';
import 'package:navigation_bar/screen/second_screen.dart';
import 'package:navigation_bar/screen/third_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int index = 0;

  final screens =  [
    FirstScreen(),
    SecondScreen(),
    ThirdScreen(),
    FourthScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Navigation bar"),
      ),
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.grey,
        buttonBackgroundColor: Colors.black,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        index: index,
        items: [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.yellowAccent,
          ),
          Icon(
            Icons.gif_box,
            size: 30,
            color: Colors.yellowAccent,
          ),
          Icon(
            Icons.wallet,
            size: 30,
            color: Colors.yellowAccent,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.yellowAccent,
          ),
        ],
        onTap: (index) => setState(() => this.index = index),
        backgroundColor: Colors.transparent,
        height: 60,
      ),
    );
  }
}
