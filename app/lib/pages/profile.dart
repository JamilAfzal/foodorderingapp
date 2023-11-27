// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final TextEditingController text1 = TextEditingController();
  final TextEditingController text2 = TextEditingController();
  final TextEditingController text3 = TextEditingController();
  final TextEditingController text4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    DateTime selectedDate = DateTime.now();

    Future<void> _selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1970),
        lastDate: DateTime.now(),
      );

      if (picked != null && picked != selectedDate) {
        setState(() {
          selectedDate = picked;
          text4.text = "${selectedDate.toLocal()}".split(' ')[0];
        });
      }
    }

    @override
    void initState() {
      super.initState();
      text4.text = "${selectedDate.toLocal()}".split(' ')[0];
    }

    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 180,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/space.jpg",
                      height: 140,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        top: 100,
                        left: 145,
                        child: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                              "assets/images/avatar.png.png",
                            ))),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Jamil Afzal",
                    style: GoogleFonts.aBeeZee(
                        fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: const Color.fromARGB(255, 242, 18, 2),
                      ),
                      Text(
                        "Karachi",
                        style: GoogleFonts.aBeeZee(
                            color: Colors.grey[400], fontSize: 17),
                      ),
                      Text(
                        ",Pakistan",
                        style: GoogleFonts.aBeeZee(
                            color: Colors.grey[400], fontSize: 17),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        Text(
                          "Name",
                          style: GoogleFonts.aBeeZee(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, right: 18.0, bottom: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Jamil Afzal",
                            contentPadding: EdgeInsets.only(left: 10),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.horizontal()),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.horizontal())),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        Text(
                          "Email",
                          style: GoogleFonts.aBeeZee(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, right: 18.0, bottom: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "jamilafzal@gmail.com",
                            contentPadding: EdgeInsets.only(left: 10),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.horizontal()),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.horizontal())),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        Text(
                          "Password",
                          style: GoogleFonts.aBeeZee(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, right: 18.0, bottom: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "********",
                            contentPadding: EdgeInsets.only(left: 10),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.horizontal()),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.horizontal())),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        Text(
                          "Date of Birth",
                          style: GoogleFonts.aBeeZee(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, right: 18.0, bottom: 10),
                      child: TextField(
                        readOnly: true,
                        controller: text4,
                        onTap: () => _selectDate(context),
                        decoration: InputDecoration(
                          hintText: "30-03-2001",
                          contentPadding: EdgeInsets.only(left: 10),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.horizontal()),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.horizontal()),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.calendar_today),
                            onPressed: () => _selectDate(context),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: GestureDetector(
                          onTap: () {
                            if (text1.text.isNotEmpty &&
                                text2.text.isNotEmpty &&
                                text3.text.isNotEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text("Changes Has Been Made")));
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content:
                                          Text("Please Fill All The Fields")));
                            }
                          },
                          child: Container(
                              width: 80,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 129, 41, 35),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(21)),
                              child: Center(
                                  child: Text(
                                "Submit",
                                style: TextStyle(color: Colors.white),
                              )))),
                    )
                  ]),
            ],
          ),
        ));
  }
}
