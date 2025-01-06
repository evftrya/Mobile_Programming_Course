import 'package:flutter/material.dart';
import 'package:layout_1/layout.dart';
import 'package:layout_1/layout2.dart';

class layoutpart2 extends StatelessWidget {
  const layoutpart2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              tabs: [
                Tab(
                  icon: Icon(Icons.home_filled),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.account_box_outlined),
                  text: "Account",
                ),
                Tab(
                  icon: Icon(Icons.alarm),
                  text: "Alarm",
                ),
                Tab(
                  icon: Icon(Icons.home_filled),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.account_box_outlined),
                  text: "Account",
                ),
                Tab(
                  icon: Icon(Icons.alarm),
                  text: "Alarm",
                ),
              ]),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [Home(), layout_2(), Ab_1201210005()],
          ),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.person),
            Text("Profile"),
            Icon(Icons.arrow_right_alt)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.person),
            Text("Profile"),
            Icon(Icons.arrow_right_alt)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.person),
            Text("Profile"),
            Icon(Icons.arrow_right_alt)
          ],
        ),
      ],
    );
  }
}
