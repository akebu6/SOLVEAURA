import 'package:flutter/material.dart';

import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:alan_voice/alan_voice.dart';

import 'package:solveaura/ui/pages/learn.dart';

class Home extends StatefulWidget {
  static const routeName = '/home';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _HomeState() {
    /// Init Alan Button with project key from Alan AI Studio
    AlanVoice.addButton("7c6bc55a3dbb2c055d0638d63759b11a2e956eca572e1d8b807a3e2338fdd0dc/stage");
    AlanVoice.onCommand.add((command) => _handleCommand(command.data));
  }

  void _handleCommand(Map<String, dynamic> command) {
    switch (command["command"]) {
      case "forward":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Learn(),
          ),
        );
        break;
      case "backward":
        Navigator.pop(context);
        break;
      default:
        debugPrint("Unknown command");
    }
  }

  // final speechToText = SpeechToText();
  // String lastWords = '';
  //
  // @override
  // void initState(){
  //   super.initState();
  //   initSpeechToText();
  // }
  //
  // Future<void> initSpeechToText() async {
  //   await speechToText.initialize(
  //     onError: (error) => print('Error: $error'),
  //     onStatus: (status) => print('Status: $status'),
  //   );
  //   setState(() {
  //     speechToText.isListening;
  //   });
  // }
  //
  // void startListening() async {
  //   await speechToText.listen(onResult: onSpeechResult);
  //   setState(() {});
  // }
  //
  // void stopListening() async {
  //   await speechToText.stop();
  //   setState(() {});
  // }
  //
  // void onSpeechResult(SpeechRecognitionResult result) {
  //   setState(() {
  //     lastWords = result.recognizedWords;
  //   });
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   speechToText.stop();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar:true,
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                'Welcome to SolveAura',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 280),
              SizedBox(
                  height: 60,
                  width:double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      elevation: 3,
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(15)
                      ),
                      padding: EdgeInsets.all(20)
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Learn(),
                        ),
                      );
                    },
                    child: const Text(
                      "Learn",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// Bottom navigation bar
class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
