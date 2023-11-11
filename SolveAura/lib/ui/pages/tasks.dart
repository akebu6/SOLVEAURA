import 'package:flutter/material.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasks'),
        backgroundColor: Colors.orange.shade900,
      ),
      body: Center(
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
