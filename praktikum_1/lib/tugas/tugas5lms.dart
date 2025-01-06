import 'package:flutter/material.dart';

class AdvanceLayout extends StatefulWidget {
  const AdvanceLayout({super.key});

  @override
  State<AdvanceLayout> createState() => _AdvanceLayout();
}

class _AdvanceLayout extends State<AdvanceLayout> {
  int _selectIndex = 0;

  static const List<Widget> pags = <Widget>[
    Text(
      'Home Page',
    ),
    Text(
      'Email Page',
    ),
    Text(
      'Profile Page',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTextStyle(
            style: const TextStyle(
              color: Colors.black,
              fontSize: 40,
            ),
            child: _selectIndex == 0
                ? Column(children: [
                    pags.elementAt(_selectIndex),
                  ])

                : Center(
                    child: pags.elementAt(_selectIndex),
                  )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Email',
            icon: Icon(Icons.email),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
        backgroundColor: Colors.orange,
        unselectedItemColor: Colors.green,
        selectedItemColor: Colors.blue,
        currentIndex: _selectIndex,
        onTap: (indexSelected) {
          setState(() {
            _selectIndex = indexSelected;
          });
        },
      ),
    );
  }
}
