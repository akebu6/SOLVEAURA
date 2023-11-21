import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solveaura/ui/User/profile/user_profile.dart';
import 'package:solveaura/ui/pages/home.dart';
import 'package:solveaura/ui/User/profile/profileForm.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrangeAccent,
        foregroundColor: Colors.white,
        shape: const StadiumBorder(
            side: BorderSide(color: Colors.white24, width: 4)),
        onPressed: () {
          Get.to(const UserProfile());
        },
        child: const Icon(Icons.person),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        leading: GestureDetector(
          onTap: () => {Get.to(const Home())},
          child: const BackButton(
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Update Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: const Column(
            children: [
              ProfileForm(),
            ],
          ),
        ),
      ),
    );
  }
}
