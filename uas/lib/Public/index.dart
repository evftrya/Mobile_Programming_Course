import 'package:flutter/material.dart';
import 'package:uas/Public/login.dart';
import 'package:google_fonts/google_fonts.dart';

class index extends StatefulWidget {
  const index({super.key});

  @override
  State<index> createState() => _indexState();
}

class _indexState extends State<index> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Text(
              "Play Me",
              style: GoogleFonts.lilyScriptOne(
                textStyle: TextStyle(
                  color: Color(0xFF72CFCA),
                  fontSize: 50,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
