import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solveaura/ui/pages/home.dart';

class UserDashboard extends StatelessWidget {
  const UserDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        leading: GestureDetector(
          onTap: () => {Get.to(() => UserHome())},
          child: const BackButton(
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: Get.height * 0.1),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: GridDashboard(),
        ),
      ),
    );
  }
}
