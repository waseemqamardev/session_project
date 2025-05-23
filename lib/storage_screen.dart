// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class LocalStorageScreen extends StatefulWidget {
//   const LocalStorageScreen({super.key});
//
//   @override
//   State<LocalStorageScreen> createState() => _LocalStorageScreenState();
// }
//
// class _LocalStorageScreenState extends State<LocalStorageScreen> {
//   final TextEditingController _controller = TextEditingController();
//   String? _savedName;
//
//   @override
//   void initState() {
//     super.initState();
//     _loadSavedName();
//   }
//
//   Future<void> _loadSavedName() async {
//     final prefs = await SharedPreferences.getInstance();
//     setState(() {
//       _savedName = prefs.getString('username') ?? 'No name saved';
//     });
//   }
//
//   Future<void> _saveName() async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setString('username', _controller.text);
//     _loadSavedName();
//     _controller.clear();
//     FocusScope.of(context).unfocus();
//   }
//
//   Future<void> _clearName() async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.remove('username');
//     _loadSavedName();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Local Storage Example")),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             TextField(
//               controller: _controller,
//               decoration: const InputDecoration(
//                 labelText: "Enter your name",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: _saveName,
//               child: const Text("Save Name"),
//             ),
//             const SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: _clearName,
//               child: const Text("Clear Name"),
//             ),
//             const SizedBox(height: 30),
//             Text(
//               'Saved name: $_savedName',
//               style: const TextStyle(fontSize: 18),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




///
/// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class LocalStorageScreen extends StatefulWidget {
//   const LocalStorageScreen({super.key});
//
//   @override
//   State<LocalStorageScreen> createState() => _LocalStorageScreenState();
// }
//
// class _LocalStorageScreenState extends State<LocalStorageScreen> {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _ageController = TextEditingController();
//
//   Map<String, dynamic> _userData = {};
//
//   @override
//   void initState() {
//     super.initState();
//     _loadUserData();
//   }
//
//   Future<void> _loadUserData() async {
//     final prefs = await SharedPreferences.getInstance();
//     final String? jsonString = prefs.getString('user_data');
//     if (jsonString != null) {
//       setState(() {
//         _userData = jsonDecode(jsonString);
//       });
//     } else {
//       setState(() {
//         _userData = {};
//       });
//     }
//   }
//
//   Future<void> _saveUserData() async {
//     final prefs = await SharedPreferences.getInstance();
//     final userData = {
//       'name': _nameController.text,
//       'email': _emailController.text,
//       'age': _ageController.text,
//     };
//     await prefs.setString('user_data', jsonEncode(userData));
//     _nameController.clear();
//     _emailController.clear();
//     _ageController.clear();
//     FocusScope.of(context).unfocus();
//     _loadUserData();
//   }
//
//   Future<void> _clearUserData() async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.remove('user_data');
//     _loadUserData();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Single Key Local Storage")),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             TextField(
//               controller: _nameController,
//               decoration: const InputDecoration(labelText: "Name"),
//             ),
//             const SizedBox(height: 10),
//             TextField(
//               controller: _emailController,
//               decoration: const InputDecoration(labelText: "Email"),
//             ),
//             const SizedBox(height: 10),
//             TextField(
//               controller: _ageController,
//               decoration: const InputDecoration(labelText: "Age"),
//               keyboardType: TextInputType.number,
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _saveUserData,
//               child: const Text("Save"),
//             ),
//             ElevatedButton(
//               onPressed: _clearUserData,
//               child: const Text("Clear"),
//             ),
//             const SizedBox(height: 30),
//             Text(
//               _userData.isNotEmpty
//                   ? 'Saved User:\nName: ${_userData['name']}\nEmail: ${_userData['email']}\nAge: ${_userData['age']}'
//                   : 'No user data saved',
//               style: const TextStyle(fontSize: 18),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }