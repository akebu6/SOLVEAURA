import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:alan_voice/alan_voice.dart';

import 'package:solveaura/ui/pages/home.dart';
import 'package:solveaura/ui/pages/signup.dart';
import 'package:solveaura/ui/pages/learn.dart';
import 'package:solveaura/ui/pages/support.dart';
import 'package:solveaura/ui/pages/achievements.dart';
import 'package:solveaura/ui/pages/profile.dart';
import 'package:solveaura/ui/pages/tasks.dart';

class Login extends StatefulWidget {
  static const routeName = '/login';
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  _LoginState() {
    _initAlanButton();
    AlanVoice.onCommand.add((command) => _handleCommand(command.data));
  }

  void _initAlanButton() {
    AlanVoice.addButton("7c6bc55a3dbb2c055d0638d63759b11a2e956eca572e1d8b807a3e2338fdd0dc/stage");
  }

  void _handleCommand(Map<String, dynamic> command) {
    switch (command["command"]) {
      case "signup":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Signup(),
          ),
        );
        break;
      case "tasks":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Tasks(),
          ),
        );
        break;
      case "achievements":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Achievements(),
          ),
        );
        break;
      case "profile":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Profile(),
          ),
        );
        break;
      case "forward":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Home(),
          ),
        );
        break;
      case "support":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Support(),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.orange.shade900,
                  Colors.orange.shade800,
                  Colors.orange.shade400
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 80,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeInUp(duration: const Duration(milliseconds: 1000),
                      child: const Text("Login",
                        style: TextStyle(color: Colors.white, fontSize: 40),)
                  ),
                  const SizedBox(height: 10,),
                  FadeInUp(duration: const Duration(milliseconds: 1300),
                      child: const Text("Welcome Back",
                        style: TextStyle(color: Colors.white, fontSize: 18),)
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60)
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 40,),
                      FadeInUp(duration: const Duration(milliseconds: 1400),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [BoxShadow(
                                    color: Color.fromRGBO(225, 95, 27, .3),
                                    blurRadius: 20,
                                    offset: Offset(0, 10)
                                )]
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(
                                          color: Colors.grey.shade200)
                                      )
                                  ),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: "Email or Phone number",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(
                                          color: Colors.grey.shade200)
                                      )
                                  ),
                                  child: const TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        hintText: "Password",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      const SizedBox(height: 40,),
                      FadeInUp(duration: const Duration(milliseconds: 1500),
                          child: const Text("Forgot Password?",
                            style: TextStyle(color: Colors.grey),)
                      ),
                      const SizedBox(height: 30,),
                      FadeInUp(duration: const Duration(milliseconds: 1600),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Home(),
                              ),
                            );
                          },
                          height: 50,
                          // margin: EdgeInsets.symmetric(horizontal: 50),
                          color: Colors.orange[900],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),

                          ),
                          // decoration: BoxDecoration(
                          // ),
                          child: const Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,),
                      FadeInUp(duration: const Duration(milliseconds: 1800),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Signup(),
                              ),
                            );
                          },
                          child: Text("Create Account",
                            style: TextStyle(color: Colors.orange[900],
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
