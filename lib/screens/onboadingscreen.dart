import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:pick_and_pay/screens/bottomnavbar.dart';

class Onboadingscreen extends StatefulWidget {
  const Onboadingscreen({super.key});

  @override
  State<Onboadingscreen> createState() => _OnboadingscreenState();
}

class _OnboadingscreenState extends State<Onboadingscreen> {
  final List<PageViewModel> allscreens = [
    PageViewModel(
      title:'Choose your Product',
      body:"Explore our wide range of quality items and select the perfect product tailored to your needs.",
      image:Image.asset('assets/images/welcome image.png'),
    ),
    PageViewModel(
     title:"Add to Cart",
     body:'"Secure your favorite items now—add them to your cart before they’re out of stock."',
     image: Image.asset('assets/images/cart image.png'),
    ),
    PageViewModel(
     title:'Easy and Fast Delivery',
     body:"Enjoy smooth, hassle-free delivery services that bring your products quickly and safely to your doorstep.",
     image: Image.asset('assets/images/delivery image.png'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor:const Color.fromARGB(255, 239, 224, 173),
      pages: allscreens,
      onDone: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Bottomnavbar()),
      ),
      showSkipButton: true,
      skip: const Text("Skip"),
      next: const Icon(Icons.arrow_forward),
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.grey,
        activeSize: Size(22.0, 10.0),
        activeColor: Colors.yellow,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
