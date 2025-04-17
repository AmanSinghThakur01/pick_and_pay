import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: body(context),
      ),
    );
  }
}

Widget body(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          height: 200,
          width:
              MediaQuery.of(context).size.width * 0.8, // ✅ 70% of screen width
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.greenAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pick & Pay Collection",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Get up to 50% off on selected items",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Shop Now",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              )
            ],
          ),
        ),
        Text("hy "),
        Text("hyy 2 "),
        Text("hy buddy how  are you"),
      ],
    ),
  );
}