import 'package:flutter/material.dart';
import 'package:pick_and_pay/utils/api/api.dart';
class Productdisplay extends StatefulWidget {
  final Map<String, dynamic> product;

  const Productdisplay({super.key, required this.product});

  @override
  State<Productdisplay> createState() => _ProductdisplayState();
}

class _ProductdisplayState extends State<Productdisplay> {

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final product = widget.product; 
    return 
    Scaffold(
      appBar: AppBar(
        title:Text(product['title']),
      ),
    );
  }
}