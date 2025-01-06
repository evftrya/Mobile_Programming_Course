import 'package:flutter/material.dart';
import 'package:praktikum_1/meet5/first_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Second Screen",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => FirstScreen()));
              },
              child: const Text('Back to First Screen'),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text('Go To Named Screen')),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/arguments');
                },
                child: Text('Go To ArgumentScreen'))
          ],
        ),
      ),
    );
  }
}
