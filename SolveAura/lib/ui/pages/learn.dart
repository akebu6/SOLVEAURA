import 'package:flutter/material.dart';

class Learn extends StatefulWidget {
  static const routeName = '/learn';
  const Learn({super.key});

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  final questionOneAnswerController = TextEditingController();

  @override
  void dispose() {
    questionOneAnswerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Math'),
        backgroundColor: Colors.orange.shade900,
      ),
      body: Column(
        children: [
          const Text('Time to learn some basic Math'),
          const Text('What is 2 * 2 / 2?'),
          TextFormField(
            controller: questionOneAnswerController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your answer her';
              }
              return null;
            },
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          //   child: Text('Submit'),
          // ),
        ],
      ),
    );
  }
}
