import 'package:flutter/material.dart';

class Achievements extends StatefulWidget {
  static const routeName = '/achievements';
  const Achievements({super.key});

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Achievements'),
        backgroundColor: Colors.orange.shade900,
      ),
      body: const Center(
        child: Text(
            "Under Construction....",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )
        ),
      ),
    );
  }
}
