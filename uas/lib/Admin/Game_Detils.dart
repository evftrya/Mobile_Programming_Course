import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas/Admin/Question.dart';
import 'package:uas/Admin/Criteria.dart';

class Game_Detail_Admin extends StatefulWidget {
  const Game_Detail_Admin({super.key});

  @override
  State<Game_Detail_Admin> createState() => _Game_Detail_AdminState();
}

class _Game_Detail_AdminState extends State<Game_Detail_Admin>
    with SingleTickerProviderStateMixin {
  double panjangTextTab = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: TitleText("House Stylw", 22, primeColor())),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: Container(
              padding: EdgeInsets.only(
                left: 40,
                right: 40,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: TabBar(
                        controller: _tabController,
                        tabs: [
                          tabTemplate("CRITERIA", 0),
                          tabTemplate("QUESTION", 1),
                        ],
                        indicator: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.transparent,
                              width: 3.0,
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            controller: _tabController,
            children: [
              TabView(Criteria()),
              TabView(Question()),
            ],
          ),
        ),
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

  Text TitleText(txt, double size, color) {
    return Text(
      txt,
      style: GoogleFonts.lilyScriptOne(
        textStyle: TextStyle(
          color: color,
          fontSize: size,
        ),
      ),
    );
  }

  Center tabTemplate(txt, index) {
    bool isActive = _tabController.index == index;
    return Center(
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        color: isActive ? Color(0xFF376E6C) : (Colors.black),
        width: 120,
        height: 30,
        child: Center(
          child: Text(
            txt,
            style: GoogleFonts.reemKufi(
              textStyle: TextStyle(
                color: secondColor(),
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Center TabView(route) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(top: 30, left: 35, right: 35, bottom: 30),
        child: Container(
          decoration: BoxDecoration(
              color: route == "QUESTION"
                  ? Color(0xffD9D9D9).withOpacity(0.2)
                  : Colors.black,
              borderRadius: BorderRadius.circular(15)),
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: route,
          ),
        ),
      ),
    );
  }
}
