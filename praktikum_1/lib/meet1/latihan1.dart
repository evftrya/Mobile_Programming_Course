import 'package:flutter/material.dart';

class Evi_1201222005 extends StatefulWidget {
  const Evi_1201222005({super.key});

  @override
  State<Evi_1201222005> createState() => _Evi_1201222005State();
}

class _Evi_1201222005State extends State<Evi_1201222005> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          color: Colors.green,
          width: 300,
          height: 300,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          alignment: const FractionalOffset(0.5, 0.5),
          child: const Text(
            "Evi_1201222005",
            style: TextStyle(
                color: Colors.green, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
            color: Colors.blue,
            height: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  color: Colors.orange,
                  child: const FlutterLogo(
                    size: 60.0,
                  ),
                ),
                Container(
                  color: Colors.blue,
                  child: const FlutterLogo(
                    size: 60.0,
                  ),
                ),
                Container(
                  color: Colors.purple,
                  child: const FlutterLogo(
                    size: 60.0,
                  ),
                ),
              ],
            ))
      ],
    ));
  }
}
