import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:session_project/screens/screen_five.dart' show DataGettingClass;

class DataSendingClass extends StatelessWidget {
  const DataSendingClass({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => DataGettingClass(name: 'My name is waseem qamar and i am from swabi',)),
                  );            },
                child: Container(
                  width: 400,
                  height: 50,
                  color: Colors.blue,
                  child: Center(child: Text("Data is sending",style: TextStyle(color: Colors.white,fontSize: 20),)),
                ),
              )        ],
          ),
        ),
      ),
    );
  }
}
