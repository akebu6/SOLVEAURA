import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:solveaura/ui/pages/tasks.dart';
import 'package:solveaura/ui/pages/achievements.dart';
import 'package:solveaura/ui/pages/profile.dart';
import 'package:solveaura/ui/pages/learn.dart';
import 'package:solveaura/ui/pages/support.dart';

class Home extends StatefulWidget {
  static const routeName = '/home';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              Colors.orange.shade400,
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
                  FadeInUp(duration: const Duration(milliseconds: 1300),
                      child: const Text("Dashboard",
                        style: TextStyle(color: Colors.white, fontSize: 30),)
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: GridView(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Tasks()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),color: Colors.red,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.assessment,size: 50,color: Colors.white,),
                              Text("Tasks",style: TextStyle(color: Colors.white,fontSize: 20),)
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Achievements()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),color: Colors.blue,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star,size: 50,color: Colors.white,),
                              Text("Achievements",style: TextStyle(color: Colors.white, fontSize: 20),)
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),color: Colors.green,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.person,size: 50,color: Colors.white,),
                              Text("Profile",style: TextStyle(color: Colors.white,fontSize: 20),)
                            ],),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Learn()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),color: Colors.purple,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.book,size: 50,color: Colors.white,),
                              Text("Learn",style: TextStyle(color: Colors.white,fontSize: 20),)
                            ],),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Support()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),color: Colors.yellow,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.support,size: 50,color: Colors.white,),
                              Text("Support",style: TextStyle(color: Colors.white,fontSize: 20),)
                            ],),
                        ),
                      ),
                    ],
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20
                  ),
                 ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
