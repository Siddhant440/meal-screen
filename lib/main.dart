import 'package:flutter/material.dart';
import 'meal_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MealScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
