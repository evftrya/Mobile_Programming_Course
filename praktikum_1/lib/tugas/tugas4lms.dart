import 'package:flutter/material.dart';

class Evi_1201222005s extends StatelessWidget {
  const Evi_1201222005s({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: DefaultTextStyle(
          style: const TextStyle(),
          child: Row(
            children: [
              Container(
                color: Colors.white,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Welcome,",
                      style: TextStyle(
                          color: Color.fromARGB(255, 96, 108, 186),
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Text(
                      "1201222005 - Evi Fitriya",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                width: 45.0,
                height: 45.0,
                decoration: BoxDecoration(
                  color: Colors.green[900],
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 50.0),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 250.0,
                    height: 250.0,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 63, 32, 217),
                            Color(0xFF8F89C5)
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10.0)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
