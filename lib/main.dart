import  'package:flutter/material.dart';
import 'package:pick_and_pay/screens/bottomnavbar.dart';

import 'package:device_preview/device_preview.dart';
import 'package:pick_and_pay/screens/spalsingscreen.dart';

void main() {

   runApp(
     DevicePreview(
       builder:(context)=> MainApp()));
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 home:Bottomnavbar(),
);
}
} 

