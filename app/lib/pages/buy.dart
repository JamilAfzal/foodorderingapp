// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Buyy extends StatefulWidget {
  const Buyy({super.key});

  @override
  State<Buyy> createState() => _BuyyState();
}

class _BuyyState extends State<Buyy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text("Buy"),
    ));
  }
}
