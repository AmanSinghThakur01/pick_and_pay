import 'package:flutter/material.dart';
import 'bottomnavbar.dart';
class spalsingscreen extends StatefulWidget {
  const spalsingscreen({super.key});

  @override
  State<spalsingscreen> createState() => _spalsingscreenState();
}

class _spalsingscreenState extends State<spalsingscreen> {
@override
void initState() {
  super.initState();
  WidgetsBinding.instance.addPostFrameCallback((_) {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Bottomnavbar()),
      );
    });
  });
}

  @override
  Widget build(BuildContext context) {
return Scaffold(
  backgroundColor: Color.fromARGB(255, 130, 227, 215), // Teal background instead of Instagram's gradient
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Large Store Logo
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25), // Rounded square like Instagram
          ),
          child: Center(
            child: Icon(
              Icons.shopping_cart,
              size: 60,
              color: Color(0xFF00796B),
            ),
          ),
        ),
        
        SizedBox(height: 40),
        
        // Store Name Text (Instagram-style font)
        Text(
          "Pick & Pay",
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.w600,
            fontFamily: "Billabong", // Note: You'll need to add this font to your pubspec.yaml
            letterSpacing: 1.0,
          ),
        ),
        
        SizedBox(height: 80),
        
        // Instagram-style loading indicator at bottom
        SizedBox(
          width: 15,
          height: 15,
          child: CircularProgressIndicator(
            strokeWidth: 2.0,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        ),
        
        SizedBox(height: 30),
        
        // From text at bottom
        Text(
          "from",
          style: TextStyle(
            color: Colors.white70,
            fontSize: 14,
          ),
        ),
        
        SizedBox(height: 8),
        
        // Company name
        Text(
          "SKY APPS",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: 2.0,
          ),
        ),
      ],
    ),
  ),
);
  }
}