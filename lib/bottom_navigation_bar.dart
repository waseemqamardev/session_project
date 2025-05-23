// import 'package:flutter/material.dart';
// import 'package:session_project/screens/screen_one.dart' show MyHomePage;
// import 'package:session_project/screens/screen_two.dart' show ScreenTwo;
//
// class CustomBottomNavigation extends StatefulWidget {
//   const CustomBottomNavigation({super.key});
//
//   @override
//   State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
// }
//
// class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
//   int selectedIndex = 0;
//
//   final List<Widget> _screens = [
//     MyHomePage(),
//     ScreenTwo(),
//     Center(child: Text("Settings Screen")),
//   ];
//
//   void onTap(int index) {
//     setState(() {
//       selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: selectedIndex,
//         onTap: onTap,
//         selectedItemColor: Colors.blue,       // 👈 Color for selected item
//         unselectedItemColor: Colors.grey,     // 👈 Color for unselected items
//         selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold), // Optional: Bold text
//         unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'Settings',
//           ),
//         ],
//       ),
//     );
//   }
// }
