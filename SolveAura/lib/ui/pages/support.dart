import 'package:flutter/material.dart';

class Support extends StatefulWidget {
  static const routeName = '/support';
  const Support({super.key});

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Support'),
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

