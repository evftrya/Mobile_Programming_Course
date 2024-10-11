import 'package:flutter/material.dart';
import 'package:praktikum_1/latihan2.dart';
import 'package:praktikum_1/tabbar.dart';

class Page_View extends StatelessWidget {
  const Page_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [Home(), latihan_2()],
      ),
    );
  }
}
