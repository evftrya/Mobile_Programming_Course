import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:praktikum_1/meet3n4/button.dart';
import 'package:praktikum_1/meet2/tabbar.dart';

class Botnavbar extends StatefulWidget {
  const Botnavbar({super.key});

  @override
  State<Botnavbar> createState() => _BotnavbarState();
}

class _BotnavbarState extends State<Botnavbar> {
  int _selectedindex = 0;
  static const List<Widget> halaman = <Widget>[
    ButtonScreenState(),
    //atas ini bisa ngambil halaman lain by contstactor (jgn lupa di import),
    tabbar(),
    Text(
      'Profile',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Flutter'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [
          PopupMenuButton(
            icon: const Icon(
              Icons.more_vert_sharp,
              color: Colors.white,
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  onTap: () {},
                  child: const Text('Logout'),
                ),
              ];
            },
          )
        ],
      ),
      body: Center(
        child: halaman.elementAt(_selectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'History',
            icon: Icon(Icons.history),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
        currentIndex: _selectedindex,
        onTap: (t) {
          setState(() {
            _selectedindex = t;
          });
        },
      ),
    );
  }
}
