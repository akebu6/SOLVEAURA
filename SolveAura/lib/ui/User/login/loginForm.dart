import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solveaura/ui/User/controllers/auth/firebase_auth_services.dart';

// This is the Login Form Widget
class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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
                  bool _isEmailValid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value!);
                  if (!_isEmailValid) {
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
                }, //{
                //   RegExp regex = RegExp(
                //       r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                //   var passNonNullValue = value ?? "";
                //   if (passNonNullValue.isEmpty) {
                //     return ("Password is required");
                //   } else if (passNonNullValue.length < 6) {
                //     return ("Password Must be more than 5 characters");
                //   } else if (!regex.hasMatch(passNonNullValue)) {
                //     return ("Password should contain upper,lower,digit and Special character ");
                //   }
                //   return null;
                // },
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
                      style: TextStyle(color: Colors.orange),
                    )),
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.orange,
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
