import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:session_project/screens/screen_two.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Checking"),
        leading: Container(
          decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
        ),
        actions: [Text("Child 1"), SizedBox(width: 20.w), Text("Child 2")],
      ),

      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ScreenTwo()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
              child: Padding(
                padding: EdgeInsets.all(8.r),
                child: Text(
                  "Hello world",
                  style: TextStyle(color: Colors.white, fontSize: 20.sp),
                ),
              ),
            ),
          ),

          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ScreenTwo()),
              );
            },
            child: Text("Button 1"),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 10, // or yourList.length
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.amberAccent,
                  child: ListTile(
                    onTap: () {},
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    leading: Container(child: Text("Aziz")),
                    title: Text("Moin"),
                    subtitle: Text("Irshad"),
                    trailing: Text("Reshma"),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
