import 'package:flutter/material.dart';

class GridView1 extends StatelessWidget {
  const GridView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            child: GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 3,
              children: [
                Container(
                  color: Colors.orange,
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
                Container(
                  color: Colors.blue,
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
                Container(
                  color: Colors.purple,
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
                Container(
                  color: Colors.orange,
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
                Container(
                  color: Colors.blue,
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
                Container(
                  color: Colors.purple,
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Container(
            child: Stack(
              children: [
                Container(
                  color: Colors.orange,
                  child: FlutterLogo(
                    size: 100.0,
                  ),
                ),
                Container(
                  color: Colors.blue,
                  child: FlutterLogo(
                    size: 80.0,
                  ),
                ),
                Container(
                  color: Colors.purple,
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
