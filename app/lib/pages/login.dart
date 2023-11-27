// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element, sort_child_properties_last

import 'package:app/pages/menupage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app/components/loginbutton.dart';

class Restpage extends StatefulWidget {
  const Restpage({super.key});

  @override
  State<Restpage> createState() => _RestpageState();
}

class _RestpageState extends State<Restpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 128, 44, 38),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              "CHINESE SUSHI ",
              style: GoogleFonts.aBeeZee(fontSize: 28, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(70.0),
              child: Image.asset("assets/images/sushi.png"),
            ),
            Text(
              "The Food That You Will Never Forget ",
              style: GoogleFonts.aBeeZee(fontSize: 28, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Text(
                "Taste the most amazing Chinese Sushi",
                style:
                    GoogleFonts.aBeeZee(fontSize: 10, color: Colors.grey[200]),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            LoginButton(
              onTap: () {},
              text: 'Get Started',
            )
          ],
        ),
      ),
    );
  }
}
