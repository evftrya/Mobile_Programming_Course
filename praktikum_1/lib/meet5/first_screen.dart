import 'package:flutter/material.dart';
import 'package:praktikum_1/Notifikasi/notifikasi.dart';
import 'package:praktikum_1/meet5/arguments_screen.dart';
import 'package:praktikum_1/meet5/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "First Screen",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 20),
          margin: EdgeInsets.only(top: 40),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(),
                      ),
                    );
                  },
                  child: const Text('To Second Screen'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  child: Text('Go To Named Screen'),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, '/ArgumentsScreen');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ArgumentsScreen(
                            message: 'Ini pesan dari first "Marvelous"'),
                      ),
                    );
                  },
                  child: Text('Go To Argument Screen'),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, '/ArgumentsScreen');
                    _returnData();
                  },
                  child: Text('Go To Data Screen'),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, '/ArgumentsScreen');
                    Notifikasi.showNotification(
                        title: "Marvel", body: "Wanda hara", payload: "second");
                  },
                  child: Text('Send Notification'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _returnData() async {
    final result = await Navigator.pushNamed(context, '/return-data');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          result.toString(),
        ),
      ),
    );
  }
}
