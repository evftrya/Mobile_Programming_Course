import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:praktikum_1/meet2/latihan1.dart';
import 'package:praktikum_1/meet1/latihan1.dart';

class tabbar extends StatelessWidget {
  const tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(isScrollable: true, tabs: [
            Tab(
              icon: Icon(Icons.home_filled),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.abc),
              text: "Account",
            ),
            Tab(
              icon: Icon(Icons.account_balance_wallet_outlined),
              text: "Alarm",
            ),
            Tab(
              icon: Icon(Icons.home_filled),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.abc),
              text: "Account",
            ),
            Tab(
              icon: Icon(Icons.account_balance_wallet_outlined),
              text: "Alarm",
            ),
          ]),
        ),
        body: const SafeArea(
          child: TabBarView(
            children: [
              Home(),
              latihan_2(),
              Evi_1201222005(),
              Home(),
              latihan_2(),
              Evi_1201222005()
            ],
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
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.person),
            Text("Profile"),
            Icon(Icons.arrow_right_alt),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.person),
            Text("Profile"),
            Icon(Icons.arrow_right_alt),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.person),
            Text("Profile"),
            Icon(Icons.arrow_right_alt),
          ],
        )
      ],
    );
  }
}
