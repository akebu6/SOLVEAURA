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
    Color shadowColor = Theme.of(context).colorScheme.shadow;
    Color surfaceTint = Theme.of(context).colorScheme.primary;
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
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
                child: ListView(
                  children: [
                    // Container(
                    //   height: 100,
                    //     child: Stack(
                    //       children: [
                    //         Positioned(
                    //           top: 10,
                    //           left: 20,
                    //           right: 20,
                    //           child: Material(
                    //           borderRadius: BorderRadius.circular(20),
                    //           color: Colors.white,
                    //           shadowColor: shadowColor,
                    //           surfaceTintColor: surfaceTint,
                    //           type: MaterialType.card,
                    //           elevation: 10,
                    //           child: const SizedBox(
                    //             width: 400,
                    //             child: Center(
                    //               child: Text(
                    //                 "Welcome to SolveAura",
                    //                 style: TextStyle(
                    //                   fontSize: 24,
                    //                   fontWeight: FontWeight.bold,
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ),)
                    //       ],
                    //     ),
                    //   ),
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          const HomePage(),
                          transition: Transition.rightToLeft,
                          duration: const Duration(milliseconds: 300),
                        );
                      },
                      child: Container(
                        height: 230,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 40,
                              right: 20,
                              left: 20,
                              child: Material(
                                child: Container(
                                  height: 180,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(0.0),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.5),
                                          blurRadius: 20.0,
                                          offset: const Offset(-10.0, 10.0),
                                          spreadRadius: 4.0
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 30,
                              child: Card(
                                elevation: 10,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Container(
                                  height: 200,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      image: AssetImage("assets/researching.png"),
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                top: 60,
                                left: 200,
                                child: Container(
                                  height: 150,
                                  width: 160,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Pretest",
                                        style: TextStyle(
                                            fontSize: 24, fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Test your knowledge",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold)
                                        ,
                                      ),
                                      Divider(color: Colors.grey,),
                                      Text(
                                        "Pass the pretest to unlock the course",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold)
                                        ,
                                      ),
                                    ],
                                  ),
                                )
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          const Learn(),
                          transition: Transition.rightToLeft,
                          duration: const Duration(milliseconds: 300),
                        );
                      },
                      child: Container(
                        height: 230,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 40,
                              right: 20,
                              left: 20,
                              child: Material(
                                child: Container(
                                  height: 180,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(0.0),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.5),
                                          blurRadius: 20.0,
                                          offset: const Offset(-10.0, 10.0),
                                          spreadRadius: 4.0
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 30,
                              child: Card(
                                elevation: 10,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Container(
                                  height: 200,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      image: AssetImage("assets/boy_illustration.png"),
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                top: 60,
                                left: 200,
                                child: Container(
                                  height: 150,
                                  width: 160,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Learn",
                                        style: TextStyle(
                                            fontSize: 24, fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Unlock new knowledge",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold)
                                        ,
                                      ),
                                      Divider(color: Colors.grey,),
                                      Text(
                                        "Dive into the world of learning",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold)
                                        ,
                                      ),
                                    ],
                                  ),
                                )
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          const ProfileScreen(),
                          transition: Transition.rightToLeft,
                          duration: const Duration(milliseconds: 300),
                        );
                      },
                      child: Container(
                        height: 230,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 40,
                              right: 20,
                              left: 20,
                              child: Material(
                                child: Container(
                                  height: 180,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(0.0),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.5),
                                          blurRadius: 20.0,
                                          offset: const Offset(-10.0, 10.0),
                                          spreadRadius: 4.0
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 30,
                              child: Card(
                                elevation: 10,
                                shadowColor: Colors.grey.withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Container(
                                  height: 200,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      image: AssetImage("assets/profile.png"),
                                      fit: BoxFit.scaleDown
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                top: 60,
                                left: 200,
                                child: Container(
                                  height: 150,
                                  width: 160,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Profile",
                                        style: TextStyle(
                                            fontSize: 24, fontWeight: FontWeight.bold),
                                      ),
                                      // Text(
                                      //   "Test your knowledge",
                                      //   style: TextStyle(
                                      //       fontSize: 16,
                                      //       color: Colors.grey,
                                      //       fontWeight: FontWeight.bold)
                                      //   ,
                                      // ),
                                      Divider(color: Colors.grey,),
                                      Text(
                                        "Edit or update your profile",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold)
                                        ,
                                      ),
                                    ],
                                  ),
                                )
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
            ),
          ],
      ),
    );
  }
}
