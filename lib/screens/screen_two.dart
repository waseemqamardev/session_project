import 'package:flutter/material.dart';
import 'package:session_project/screens/screen_three.dart' show StackScreen;
import 'package:session_project/widget/textfield_widget.dart' show CustomTextfield;

import 'bottom_navigation_bar_screen.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(title: Text("Screen 2")),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/app_launcher.png",
                width: 100,
                height: 100,
              ),
            ),

            Text("Please enter Your name"),
            CustomTextfield(Label: 'Enter your name',HintText: "Enter your name.....",),
            Text("Please enter Your Email"),
            CustomTextfield(Label: 'Enter your email',),

            Container(
              width: 400,
              height: 50,
              child: ElevatedButton(onPressed: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => CustomBottomBar()),
                );            }
                  , child: Text("Login")),
            )
          ],
        ),
      ),
    );
  }
}
