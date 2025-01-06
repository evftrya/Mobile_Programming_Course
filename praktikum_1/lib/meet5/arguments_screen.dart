import 'package:flutter/material.dart';
import 'package:praktikum_1/meet5/first_screen.dart';

class ArgumentsScreen extends StatefulWidget {
  const ArgumentsScreen({super.key, required this.message});

  final String message;

  @override
  State<ArgumentsScreen> createState() => _ArgumentsScreenState();
}

class _ArgumentsScreenState extends State<ArgumentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Arguments Screen",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.message),
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
          ],
        ),
      ),
    );
  }
}
