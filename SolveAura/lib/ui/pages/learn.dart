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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent.shade700,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.24),
                        blurRadius: 20.0,
                        offset: const Offset(0.0, 10.0),
                        spreadRadius: -10,
                        blurStyle: BlurStyle.outer,
                      )
                    ],
                  ),
                  child: Image.asset("assets/learn.png"),
                ),
                const SizedBox(height: 5,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
