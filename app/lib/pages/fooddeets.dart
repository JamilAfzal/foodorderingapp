// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:app/pages/foodtile.dart';
import 'package:app/pages/food.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Fooddetails extends StatefulWidget {
  final Food food;
  const Fooddetails({
    required this.food,
    super.key,
  });

  @override
  State<Fooddetails> createState() => _FooddetailsState();
}

// ignore: camel_case_types
class _FooddetailsState extends State<Fooddetails> {
  int count = 0;
  double amount() {
    String stringValue = widget.food.price;
    try {
      return double.parse(stringValue);
    } catch (e) {
      print('Error parsing amount: $stringValue');
      return 0.0; // or any default value you prefer
    }
  }

  double calculateTotalAmount() {
    return amount() * count;
  }

  void incrementcount() {
    setState(() {
      count++;
      double totalamount = calculateTotalAmount();
    });
  }

  void decrementcount() {
    setState(() {
      if (count > 1) {
        setState(() {
          count--;
          double totalamount = calculateTotalAmount();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(224, 129, 2, 2),
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              widget.food.imagePath,
              width: 200,
              height: 200,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              widget.food.name,
              style: GoogleFonts.aBeeZee(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: const Color.fromARGB(255, 16, 15, 15)),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 110,
              ),
              Text(
                "\$",
                style: TextStyle(
                    fontSize: 20, color: Color.fromRGBO(0, 100, 0, 1)),
              ),
              Text(widget.food.price,
                  style: GoogleFonts.aBeeZee(
                      fontSize: 20, color: Color.fromRGBO(0, 100, 0, 1))),
              SizedBox(
                width: 80,
              ),
              Icon(
                Icons.star_rate,
                color: Colors.orange,
                size: 20,
              ),
              Text(
                widget.food.rating,
                style: GoogleFonts.aBeeZee(fontSize: 20, color: Colors.orange),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            "Description:",
            style:
                GoogleFonts.aBeeZee(fontSize: 22, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            width: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "${widget.food.name} whose price is \$${widget.food.price} and the rating is ${widget.food.rating} is one of the most selling product at our outlet. You should order it and taste yourselves to taste  heavenly food",
              style: GoogleFonts.aBeeZee(color: Colors.grey),
            ),
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
                color: Color.fromARGB(224, 129, 2, 2),
                borderRadius: BorderRadius.circular(31)),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "\$",
                      style: GoogleFonts.aBeeZee(
                          color: Colors.white, fontSize: 19),
                    ),
                    Text(
                      calculateTotalAmount().toString(),
                      style: GoogleFonts.aBeeZee(
                          color: Colors.white, fontSize: 19),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(60, 113, 98, 98)),
                      child: IconButton(
                          onPressed: () {
                            decrementcount();
                          },
                          icon: Icon(
                            Icons.delete,
                            size: 19,
                            color: Colors.white,
                          )),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      count.toString(),
                      style: GoogleFonts.aBeeZee(
                          fontSize: 19, color: Colors.white),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(60, 113, 98, 98)),
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              incrementcount();
                            });
                          },
                          icon: Icon(
                            Icons.add,
                            size: 19,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "Go To Cart",
                        style: GoogleFonts.aBeeZee(
                            color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(60, 113, 98, 98)),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
