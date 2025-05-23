import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          // alignment: Alignment.center,
          clipBehavior: Clip.none,
          // children: [
          //   Positioned(
          //     top: 100,
          //     left: 40,
          //     child: Container(width: 200, height: 200, color: Colors.red),
          //   ),
          //   Positioned(
          //     top: 230,
          //     left: 140,
          //     child: Container(width: 200, height: 200, color: Colors.black),
          //   ),
          //   Positioned(
          //     top: 330,
          //     left: 240,
          //     child: Container(width: 200, height: 200, color: Colors.blue),
          //   ),
          //   Container(width: 200, height: 200, color: Colors.yellow),
          // ],
          children: [
            Container(
              height: 600,
              child: Image.asset(
                "assets/images/app_launcher.png",
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              top: 160,
              right: 30,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white
                ),
                child: Center(
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
