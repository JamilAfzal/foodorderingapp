// ignore_for_file: prefer_const_constructors, unused_element, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, must_be_immutable

import 'package:app/pages/food.dart';
import 'package:app/pages/fooddeets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodTile extends StatefulWidget {
  final Food food;
  void Function()? onTap;
  FoodTile({super.key, required this.food, required this.onTap});

  @override
  State<FoodTile> createState() => _FoodTileState();
}

class _FoodTileState extends State<FoodTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => Fooddetails())));
      },
      child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(11)),
          child: Column(children: [
            Image.asset(
              widget.food.imagePath,
              height: 140,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              widget.food.name,
              style: GoogleFonts.aBeeZee(
                  fontSize: 20, color: const Color.fromARGB(255, 16, 15, 15)),
            ),
            SizedBox(
              width: 160,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("\$ " + widget.food.price),
                  SizedBox(
                    width: 35,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Text(widget.food.rating)
                ],
              ),
            )
          ])),
    );
  }
}
