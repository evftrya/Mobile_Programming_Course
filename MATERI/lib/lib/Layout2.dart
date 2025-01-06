import 'package:flutter/material.dart';

class layout_2 extends StatelessWidget {
  const layout_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 500,
            child: GridView.count(
              crossAxisCount: 2,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  margin: EdgeInsets.all(5),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                  margin: EdgeInsets.all(5),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  margin: EdgeInsets.all(5),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  margin: EdgeInsets.all(5),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                  margin: EdgeInsets.all(5),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  margin: EdgeInsets.all(5),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  margin: EdgeInsets.all(5),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                  margin: EdgeInsets.all(5),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  margin: EdgeInsets.all(5),
                ),
              ],
            ),
          ),
          Container(
            child: Stack(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.person,
                  size: 100,
                ),
                Text("Rifqy")
              ],
            ),
          )
        ],
      ),
    );
  }
}
