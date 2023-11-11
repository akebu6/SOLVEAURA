import 'package:flutter/material.dart';
import 'package:solveaura/ui/pages/home.dart';
import 'package:solveaura/ui/pages/learn.dart';
import 'package:solveaura/ui/pages/login.dart';
import 'package:solveaura/ui/pages/signup.dart';
import 'package:solveaura/ui/pages/achievements.dart';
import 'package:solveaura/ui/pages/profile.dart';
import 'package:solveaura/ui/pages/support.dart';
import 'package:solveaura/ui/pages/tasks.dart';

final Map<String, WidgetBuilder> routes = {
  Home.routeName: (_) => const Home(),
  Learn.routeName: (_) => const Learn(),
  Login.routeName: (_) => const Login(),
  Signup.routeName: (_) => const Signup(),
  Achievements.routeName: (_) => const Achievements(),
  Profile.routeName: (_) => const Profile(),
  Support.routeName: (_) => const Support(),
  Tasks.routeName: (_) => const Tasks(),
};
