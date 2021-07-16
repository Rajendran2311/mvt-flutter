import 'package:flutter/material.dart';
import 'main_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  late int currentTab=0;
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      
      home: MainPage(currentTab:currentTab),
      debugShowCheckedModeBanner: false,
    );
  }
}
