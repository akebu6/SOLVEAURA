import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solveaura/ui/User/controllers/auth/firebase_auth_services.dart';
import 'package:solveaura/ui/User/profile/profile.dart';
import 'package:solveaura/ui/pages/tasks.dart';
import 'package:solveaura/ui/pages/learn.dart';
import 'package:solveaura/ui/pages/achievements.dart';
import 'package:solveaura/ui/pages/support.dart';
import 'package:solveaura/ui/pages/pre_test/views/home_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  DatabaseReference ref = FirebaseDatabase.instance.ref('Users');
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late User userID;

  @override
  void initState() {
    super.initState();
    userID = _auth.currentUser!;
  }

  @override
  Widget build(BuildContext context) {
    String userName = "";
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text(
          'Welcome',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
              ),
              child: Text(
                'User Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.account_circle,
                color: Colors.grey,
              ),
              title: const Text('Profile'),
              onTap: () {
                Get.to(
                      () => const ProfileScreen(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(milliseconds: 200),
                );
                // Handle profile item click
              },
            ),
            const Divider(),
            GestureDetector(
              onTap: () {
                Get.to(
                  const Tasks(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(milliseconds: 300),
                );
              },
              child: const ListTile(
                leading: Icon(
                  Icons.task,
                  color: Colors.grey,
                ),
                title: Text('Tasks'),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(
                  const Achievements(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(milliseconds: 300),
                );
              },
              child: const ListTile(
                leading: Icon(
                  Icons.star,
                  color: Colors.grey,
                ),
                title: Text('Achievements'),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(
                  const Support(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(milliseconds: 300),
                );
              },
              child: const ListTile(
                leading: Icon(
                  Icons.support,
                  color: Colors.grey,
                ),
                title: Text('Support'),
              ),
            ),

            // Add more items as needed
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.exit_to_app,
                color: Colors.grey,
              ),
              title: const Text('Logout'),
              onTap: () {
                AuthController.instance.logout();
              },
            ),
          ],
        ),
      ),
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
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0)
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: GridView(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20
                    ),
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),color: Colors.green,
                          ),
                          child: const Column(
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
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.book,size: 50,color: Colors.white,),
                              Text("Learn",style: TextStyle(color: Colors.white,fontSize: 20),)
                            ],),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),color: Colors.greenAccent,
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.quiz,size: 50,color: Colors.white,),
                              Text("Pre-test",style: TextStyle(color: Colors.white,fontSize: 20),)
                            ],),
                        ),
                      ),
                    ],
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
