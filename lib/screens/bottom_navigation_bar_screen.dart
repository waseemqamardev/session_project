import 'package:flutter/material.dart';
import 'package:session_project/screens/screen_one.dart' show MyHomePage;
import 'package:session_project/screens/screen_three.dart' show StackScreen;
import 'package:session_project/screens/screen_two.dart' show ScreenTwo;

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex=0;
  final List<Widget> _screens=[
    MyHomePage(),
    ScreenTwo(),
    StackScreen(),
  ];
  void onTap(int index){
    setState(() {
      selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: _screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blue,
        onTap:onTap ,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: "Screen 1"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.abc),
              label: "Screen 2"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.abc),
              label: "Screen 3"
          ),
        ],
      ),
    ));
  }
}
