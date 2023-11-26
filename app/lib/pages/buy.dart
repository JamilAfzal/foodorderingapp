// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Buyy extends StatefulWidget {
  const Buyy({super.key});

  @override
  State<Buyy> createState() => _BuyyState();
}

class _BuyyState extends State<Buyy> {
  int thecount = 0;
  int count1 = 0;
  void countadd1() {
    setState(() {
      count1++;
    });
  }

  void countsub1() {
    if (thecount > 0) {
      setState(() {
        count1--;
      });
    }
  }

  void countadd() {
    setState(() {
      thecount++;
    });
  }

  void countsub() {
    if (thecount > 0) {
      setState(() {
        thecount--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(224, 129, 2, 2),
          elevation: 0,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    "assets/images/salmon.png",
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  children: [
                    Text(
                      "Salmon",
                      style: TextStyle(fontSize: 19),
                    ),
                    Text(
                      "Chinese Shop By Jamil",
                      style: TextStyle(color: Colors.grey[400], fontSize: 15),
                    )
                  ],
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      color: Color.fromARGB(224, 129, 2, 2),
                      width: 57,
                      height: 25,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              countsub();
                            },
                            child: Icon(
                              Icons.delete,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(thecount.toString(),
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {
                              countadd();
                            },
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Divider(
                  thickness: 3,
                  color: const Color.fromARGB(255, 233, 10, 10),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    "assets/images/sushi.png",
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  children: [
                    Text(
                      "Sushi",
                      style: TextStyle(fontSize: 19),
                    ),
                    Text(
                      "Chinese Shop By Jamil",
                      style: TextStyle(color: Colors.grey[400], fontSize: 15),
                    )
                  ],
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      color: Color.fromARGB(224, 129, 2, 2),
                      width: 57,
                      height: 25,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              countsub1();
                            },
                            child: Icon(
                              Icons.delete,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(count1.toString(),
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {
                              countadd1();
                            },
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Divider(
                  thickness: 3,
                  color: const Color.fromARGB(255, 233, 10, 10),
                )
              ],
            )
          ],
        ));
  }
}
