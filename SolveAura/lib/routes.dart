import 'package:flutter/material.dart';
import 'package:solveaura/ui/pages/home.dart';
import 'package:solveaura/ui/pages/learn.dart';
import 'package:solveaura/ui/pages/login.dart';

final Map<String, WidgetBuilder> routes = {
  Home.routeName: (_) => const Home(),
  Learn.routeName: (_) => const Learn(),
};
