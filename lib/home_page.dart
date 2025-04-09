import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
          height: 400,
          width: 200,
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Hello From"),
              Text(
                "CYBROM",
                style: TextStyle(fontSize: 30, color: Colors.red),
              ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text("One"),
                ),
                Container(
                  child: Text("Two"),
                ),
                Container(
                  child: Text("Three"),
                )
              ],
             ),
Image.f("https://media.istockphoto.com/id/1458782106/photo/scenic-aerial-view-of-the-mountain-landscape-with-a-forest-and-the-crystal-blue-river-in.jpg?s=1024x1024&w=is&k=20&c=iPdhO2H3jeYh4UWmNlrXNmiiK04iaLykIMiD9u1yDq4="),              ElevatedButton(
                onPressed: () {
                  print("Hello world");
                },
                child: Text("SUBMIT"),
              ),
                            
            ],
          ),
        ),
      ),
    );
  }
}
