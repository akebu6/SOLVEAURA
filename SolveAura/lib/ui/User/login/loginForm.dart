import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:alan_voice/alan_voice.dart';
import 'package:solveaura/ui/User/controllers/auth/firebase_auth_services.dart';

import 'package:solveaura/ui/User/signup/signup.dart';
import 'package:solveaura/ui/pages/home.dart';
import 'package:solveaura/ui/pages/pre_test/views/home_screen.dart';
import 'package:solveaura/ui/User/profile/profile.dart';

// This is the Login Form Widget
class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  _LoginFormState() {
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
            builder: (context) => const SignUpScreen(),
          ),
        );
        break;
      case "pretest":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
        break;
      case "profile":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProfileScreen(),
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
      case "backward":
        Navigator.pop(context);
        break;
      default:
        debugPrint("Unknown command");
    }
  }

  final controller = Get.put(AuthController());
  String? email1, password1;
  bool _isObscure = true;
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formkey,
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 30 - 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 250),
              TextFormField(
                controller: controller.emailController,
                validator: (value) {
                  bool isEmailValid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value!);
                  if (!isEmailValid) {
                    return 'invalid email';
                  }
                  // return null if email is valid
                  return null;
                },
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email_outlined),
                  labelText: "Email",
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: controller.passwordController,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'This field is required';
                  }
                  if (value.trim().length < 6) {
                    return 'Password must be at least 6 characters in length';
                  }
                  // Return null if the entered password is valid
                  return null;
                },
                obscureText: _isObscure,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility_off : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      }),
                  prefixIcon: const Icon(Icons.lock_outlined),
                  labelText: "Password",
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              const SizedBox(height: 30 - 20),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    style: ButtonStyle(
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: const BorderSide(
                                    color: Colors.transparent)))),
                    onPressed: () {},
                    child: const Text(
                      "Forget Password?",
                      style: TextStyle(color: Colors.deepOrangeAccent),
                    )),
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.deepOrangeAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    // if statement will check validation then we will send input data to Login controller for validation
                    if (formkey.currentState!.validate()) {
                      AuthController.instance.login(
                          controller.emailController.text.toString(),
                          controller.passwordController.text.trim());
                    }

                    // Get.off(() => UserHome());
                  },
                  child: Text("Log in".toUpperCase()),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }
}
