// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:app/pages/foodtile.dart';
import 'package:app/pages/food.dart';

// ignore: camel_case_types
class Fooddetails extends StatefulWidget {
  const Fooddetails({
    super.key,
  });

  @override
  State<Fooddetails> createState() => _FooddetailsState();
}

// ignore: camel_case_types
class _FooddetailsState extends State<Fooddetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.grey[400],
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView(
              children: [],
            ))
          ],
        ));
  }
}
