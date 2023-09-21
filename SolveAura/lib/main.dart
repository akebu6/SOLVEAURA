import 'package:flutter/material.dart';
import 'package:solveaura/screens/dashboard/Dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowMaterialGrid: false,
    title: 'MealMate',
    debugShowCheckedModeBanner: false,
    home: Dashboard(),
    );
  }
}
