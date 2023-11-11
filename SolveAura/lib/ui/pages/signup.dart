import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:solveaura/ui/pages/login.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});


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
            const SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeInUp(duration: const Duration(milliseconds: 1000),
                      child: const Text("Create Account",
                        style: TextStyle(color: Colors.white, fontSize: 40),)
                  ),
                  const SizedBox(height: 5,),
                  FadeInUp(duration: const Duration(milliseconds: 1300),
                      child: const Text("Welcome to SolveAura",
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
                      const SizedBox(height: 30,),
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
                                    decoration: InputDecoration(
                                        hintText: "Username",
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
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(
                                          color: Colors.grey.shade200)
                                      )
                                  ),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: "Confirm Password",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      const SizedBox(height: 40,),
                      FadeInUp(duration: const Duration(milliseconds: 1600),
                          child: MaterialButton(
                            onPressed: () {},
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
                                "Signup",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),),
                            ),
                          )),
                      const SizedBox(height: 20,),
                      FadeInUp(duration: const Duration(milliseconds: 1800),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Login(),
                              ),
                            );
                          },
                          child: Text("Already have an account? Login",
                            style: TextStyle(color: Colors.orange[900],
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,),
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
