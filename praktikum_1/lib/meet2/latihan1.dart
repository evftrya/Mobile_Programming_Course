import 'package:flutter/material.dart';

class latihan_2 extends StatelessWidget {
  const latihan_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
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
                  margin: const EdgeInsets.all(5),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  margin: const EdgeInsets.all(5),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                  margin: const EdgeInsets.all(5),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.black,
                  margin: const EdgeInsets.all(5),
                )
              ],
            ),
          ),
          Container(
            child: Stack(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow[900],
                ),
                const Icon(
                  Icons.person,
                  size: 100,
                ),
                Container(
                  child: const Column(
                    children: [
                      Text(
                        "Rifqy",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Attaufi",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Asprak Mobile",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
