// ignore_for_file: prefer_const_constructors

import 'package:app/pages/buy.dart';
import 'package:app/pages/fooddeets.dart';
import 'package:app/pages/profile.dart';
import 'package:app/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:app/pages/login.dart';
import 'package:app/pages/menupage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: Restpage(),
        routes: {
          "/intropage": (context) => Restpage(),
          "/menupage": (context) => MenuPage(),
          "/settingspage": (context) => Settingss(),
          "/profilepage": (context) => Profile(),
          "/buypage": (context) => Buyy(),
          "/fooddeets": (context) => Fooddetails()
        });
  }
}
