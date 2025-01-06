import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPageAdmin extends StatefulWidget {
  const LandingPageAdmin({super.key});

  @override
  State<LandingPageAdmin> createState() => _LandingPageAdminState();
}

class _LandingPageAdminState extends State<LandingPageAdmin> {
  // const double sizedIcon = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80.0,
        title: Text(
          'Play Me',
          style: GoogleFonts.lilyScriptOne(
            textStyle: TextStyle(
              color: primeColor(),
              fontSize: 30,
            ),
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            color: primeColor(),
            onPressed: () {},
            icon: Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          //container1
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Container(
                  //container2
                  margin: EdgeInsets.only(top: 50),
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.65,
                  decoration:
                      BoxDecoration(color: const Color.fromARGB(255, 0, 0, 0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: primeText("Game", 30, secondColor()),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)),
                        height: MediaQuery.of(context).size.height * 0.55,
                        padding: EdgeInsets.all(20),
                        child: SingleChildScrollView(
                          child: Wrap(
                            spacing: 10,
                            runSpacing: 10,
                            // runAlignment: 1,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TheGame(
                                "House",
                                "assets/Rumah.jpg",
                                Color(0xFF376E6C),
                              ),
                              TheGame(
                                "House",
                                "assets/Rumah.jpg",
                                Color(0xFF376E6C),
                              ),
                              TheGame(
                                "House",
                                "assets/Rumah.jpg",
                                Color(0xFF376E6C),
                              ),
                              TheGame(
                                "House",
                                "assets/Rumah.jpg",
                                Color(0xFF376E6C),
                              ),
                              TheGame(
                                "House",
                                "assets/Rumah.jpg",
                                Color(0xFF376E6C),
                              ),
                              TheGame(
                                "House",
                                "assets/Rumah.jpg",
                                Color(0xFF376E6C),
                              ),
                              TheGame(
                                "House",
                                "assets/Rumah.jpg",
                                Color(0xFF376E6C),
                              ),
                              TheGame(
                                "House",
                                "assets/Rumah.jpg",
                                Color(0xFF376E6C),
                              ),
                              TheGame(
                                "House",
                                "assets/Rumah.jpg",
                                Color(0xFF376E6C),
                              ),
                              TheGame(
                                "House",
                                "assets/Rumah.jpg",
                                Color(0xFF376E6C),
                              ),
                              TheGame(
                                "House",
                                "assets/Rumah.jpg",
                                Color(0xFF376E6C),
                              ),
                              TheGame(
                                "House",
                                "assets/Rumah.jpg",
                                Color(0xFF376E6C),
                              ),
                              TheGame(
                                "House",
                                "assets/Rumah.jpg",
                                Color(0xFF376E6C),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: primeColor(),
        unselectedItemColor: primeColor(),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            label: 'Add New Game',
            icon: Icon(
              Icons.add,
              size: 40,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Beranda',
            icon: Icon(
              Icons.games,
              size: 40,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              Icons.person,
              size: 40,
            ),
          )
        ],
      ),
    );
  }

  Color primeColor() {
    return Color(0xFF72CFCA);
  }

  Color secondColor() {
    return Colors.white;
  }

  Color thirdColor() {
    return Colors.black;
  }

  SizedBox Gap(double size) {
    return SizedBox(
      height: size,
    );
  }

  Text primeText(txt, double size, color) {
    return Text(
      txt,
      style: GoogleFonts.reemKufi(
        textStyle: TextStyle(
          color: color,
          fontSize: size,
        ),
      ),
    );
  }

  ElevatedButton TheGame(name, thePhoto, Color) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
      ),
      onPressed: () {},
      child: Container(
        height: 125,
        width: 125,
        decoration: BoxDecoration(
            // image: DecorationImage(
            //   image: AssetImage("../assets/Rumah.jpg"),
            //   fit: BoxFit.cover,
            // ),
            // color: Colors.cyan,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  thePhoto,
                  fit: BoxFit.cover,
                  height: 125,
                  width: 125,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(3, 3))
                          ]),
                      child: Center(
                        child: primeText(name, 20, Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
