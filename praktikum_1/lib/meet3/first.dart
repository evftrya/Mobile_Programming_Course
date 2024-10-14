import 'package:flutter/material.dart';

class ButtonScreenState extends StatefulWidget {
  const ButtonScreenState({super.key});

  @override
  State<ButtonScreenState> createState() => _ButtonScreenStateState();
}

class _ButtonScreenStateState extends State<ButtonScreenState> {
  String _selectedItem = 'Item 1';
  //harus sama seperti salah satu value di dropdownmenuitem
  //karena ini adalah yang dipanggil pada value nya dropdownbutton
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {},
              child: Text(
                'Text Button',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              onPressed: () {},
              child: Text(
                "Elevated Button",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                "Outlined Button",
                style: TextStyle(
                  color: const Color.fromARGB(255, 96, 30, 30),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.thumb_up),
            ),
            DropdownButton<String>(
                value: _selectedItem,
                items: [
                  DropdownMenuItem(
                    value: 'Item 1',
                    child: Text('Item 1'),
                  ),
                  DropdownMenuItem(
                    value: 'Item 2',
                    child: Text('Item 2'),
                  ),
                  DropdownMenuItem(
                    value: 'Item 3',
                    child: Text('Item 3'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _selectedItem = value!;
                  });
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      //FloatingActBut bisa tanpa body karena setara body
    );
  }
}
