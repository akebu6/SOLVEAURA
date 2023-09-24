import 'package:flutter/material.dart';
import 'package:alan_voice/alan_voice.dart';

class Learn extends StatefulWidget {
  static const routeName = '/learn';
  const Learn({super.key});

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  final questionOneAnswerController = TextEditingController();

  _Learntate() {
    AlanVoice.onCommand.add((command) => _handleCommand(command.data));
  }

  void _handleCommand(Map<String, dynamic> command) {
    switch (command["command"]) {
      case "getAnswerOne":
        questionOneAnswerController.text = command["data"];
        break;
      default:
        debugPrint("Unknown command");
    }
  }

  @override
  void dispose() {
    questionOneAnswerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Math'),
      ),
      body: Column(
        children: [
          Text('Time to learn some basic Math'),
          Text('What is 2 * 2 / 2?'),
          TextFormField(
            controller: questionOneAnswerController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your answer her';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
