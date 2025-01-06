import 'package:flutter/material.dart';

class Ab_1201210005 extends StatelessWidget {
  const Ab_1201210005({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            alignment: FractionalOffset(0, 0),
            margin: EdgeInsets.only(left: 20),
            padding: EdgeInsets.all(20),
            color: Colors.yellow,
            child: Text(
              "Abriel Karisma",
              style: TextStyle(
                  color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            color: Colors.red,
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.orange,
                    child: FlutterLogo(
                      size: 60.0,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: FlutterLogo(
                      size: 60.0,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.purple,
                    child: FlutterLogo(
                      size: 60.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.black,
            height: 250,
            width: double.infinity, //ukuran full sampai ruang yang tersedia
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.orange,
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: FlutterLogo(
                      size: 60.0,
                    ),
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
        ],
      ),
    );
  }
}
