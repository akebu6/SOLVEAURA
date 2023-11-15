import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  static const routeName = '/profile';
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
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
