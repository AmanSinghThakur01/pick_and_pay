import 'package:flutter/material.dart';
import 'package:pick_and_pay/product/productgrid.dart';
import 'package:pick_and_pay/screens/Homepage.dart';
import 'package:pick_and_pay/screens/cart.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
 int selectedindex = 0;
List screenlist = [
  Homepage(),
  Productgrid(),
  Cart(),
];

  @override
  Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 127, 248, 248),
          title: Text(
            "Pick & Pay",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Text("search icons pressed");
              },
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {
                Text("alert icons pressed");
              },
              icon: Icon(Icons.notifications_none),
            )
          ],
        ),
        body: screenlist[selectedindex],
       bottomNavigationBar:BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
           BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: "Products"),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
       ],
   
       onTap: (index){
        setState(() {
          selectedindex = index;
        });
        
       },
           currentIndex: selectedindex,
           selectedItemColor: Colors.teal,
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
      ],
    ),
  );
  } 
  