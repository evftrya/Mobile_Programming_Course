import 'package:flutter/material.dart';

class Evi_1201222005 extends StatelessWidget {
  const Evi_1201222005({super.key});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        title: DefaultTextStyle(
          style: TextStyle(),
          child: new Row(
            children: [
              new Container(
                color: Colors.white,
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome,",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 96, 108, 186),
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
              Spacer(),
              new Container(
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
      body: new Container(
        color: Color.fromARGB(255, 255, 255, 255),
        width: MediaQuery.of(context).size.width,
        child: new Column(
          children: [
            new Container(
              margin: EdgeInsets.symmetric(vertical: 50.0),
              color: Colors.white,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Container(
                    width: 250.0,
                    height: 250.0,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
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
