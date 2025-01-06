import 'package:flutter/material.dart';
import 'package:layout_1/layout.dart';
import 'package:layout_1/layout2.dart';
import 'package:layout_1/layoutpart2.dart';

class Page_view extends StatelessWidget {
  const Page_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: [Home(), Ab_1201210005(), layout_2()],
    ));
  }
}
