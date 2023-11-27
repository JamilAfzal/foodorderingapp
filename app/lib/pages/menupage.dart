// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:app/pages/buy.dart';
import 'package:app/pages/food.dart';
import 'package:app/pages/fooddeets.dart';
import 'package:app/pages/profile.dart';
import 'package:app/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app/pages/foodtile.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List FoodMenu = [
    Food(
        name: "Salmon",
        price: "14.00",
        imagePath: "assets/images/salmon.png",
        rating: "4.0"),
    Food(
        name: "Sushi",
        price: "21.00",
        imagePath: "assets/images/sushi.png",
        rating: "4.9"),
    Food(
        name: "Special Sushi",
        price: "25.00",
        imagePath: "assets/images/sushi (1).png",
        rating: "5.0"),
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void navigatetofooddeets(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Fooddetails(
                  food: FoodMenu[index],
                )));
  }

  int _selectedindex = 0;
  final PageController _pageController = PageController(initialPage: 0);
  final List<Widget> _pages = [Buyy(), Profile(), Settingss()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color.fromARGB(255, 252, 249, 249),
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Color.fromARGB(224, 129, 2, 2),
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(bottom: 1, right: 9),
              child: IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: const Color.fromARGB(255, 253, 252, 252),
                ),
                onPressed: () {
                  _scaffoldKey.currentState?.openEndDrawer();
                },
              ),
            )
          ],
          title: Text(
            "Chinese Shop",
            style: GoogleFonts.aBeeZee(
                fontSize: 20, color: const Color.fromARGB(255, 230, 228, 228)),
          ),
        ),
        body: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _selectedindex = index;
              });
            },
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      color: const Color.fromARGB(255, 129, 41, 35),
                      height: 180,
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Get 20% off",
                            style: GoogleFonts.aBeeZee(
                                fontSize: 15, color: Colors.white),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                        Color.fromARGB(255, 121, 44, 38),
                                      ),
                                      foregroundColor: MaterialStatePropertyAll(
                                          Colors.white),
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50.0))),
                                      padding: MaterialStatePropertyAll(
                                          EdgeInsets.all(15))),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Redeem"),
                                      SizedBox(
                                        width: 13,
                                      ),
                                      Icon(Icons.arrow_forward)
                                    ],
                                  )),
                              SizedBox(
                                width: 120,
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Image.asset(
                                  "assets/images/pngwing.com.png",
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: SizedBox(
                      width: 360,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search...",
                            suffixIcon: Icon(
                              Icons.search,
                              color: const Color.fromARGB(255, 136, 34, 34),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: BorderSide(
                                    color: const Color.fromARGB(
                                        255, 144, 29, 29))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: BorderSide(
                                    color: const Color.fromARGB(
                                        255, 134, 30, 30)))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Food Menu",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 134, 91, 91)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: FoodMenu.length,
                          itemBuilder: (context, index) {
                            return Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Card(
                                    margin: EdgeInsets.only(top: 1),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(13)),
                                    elevation: 12,
                                    child: SingleChildScrollView(
                                        // Wrap with SingleChildScrollView
                                        child: FoodTile(
                                            onTap: () {
                                              navigatetofooddeets(index);
                                            },
                                            food: FoodMenu[index]))));
                          })),
                ],
              ),
              ..._pages
            ]),
        bottomNavigationBar: GNav(
          backgroundColor: const Color.fromARGB(255, 129, 41, 35),
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Color.fromARGB(255, 129, 55, 49),
          gap: 10,
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.shopping_bag,
              text: "Cart",
            ),
            GButton(
              icon: Icons.person,
              text: "Profile",
            ),
            GButton(
              icon: Icons.settings,
              text: "Settings",
            )
          ],
          // Set the selected index
          onTabChange: (index) {
            setState(() {
              _selectedindex = index;
              _pageController.jumpToPage(index); // Update the selected index
            });

            // Use a switch statement or if/else to navigate to the respective pages
          },
        ),
        drawer: Drawer(
            child: Column(
          children: [
            Container(
              height: 200,
              color: const Color.fromARGB(255, 129, 41, 35),
            ),
            ListTile(
              title: Text("user@gmail.com"),
              trailing: Icon(Icons.verified_user_sharp),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            ListTile(
              title: Text("Contact Us"),
              trailing: Icon(Icons.person_4),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            ListTile(
              title: Text("My Orders"),
              trailing: Icon(Icons.shopping_bag),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            ListTile(
              title: Text("user@gmail.com"),
              trailing: Icon(Icons.verified_user_sharp),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            ListTile(
              title: Text("user@gmail.com"),
              trailing: Icon(Icons.verified_user_sharp),
            )
          ],
        )),
        endDrawer: Drawer(
            child: Column(
          children: [
            Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 129, 41, 35),
                height: 200,
                child: Center(
                    child: Column(
                  children: [
                    Icon(
                      Icons.shopping_basket,
                      color: Colors.white,
                      size: 120,
                    ),
                    Text(
                      "My Shopping Cart ",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ))),
            ListTile(
              title: Text("My Basket"),
              trailing: Icon(Icons.shopping_basket),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ],
        )));
  }
}
