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
            const SizedBox(
              height: 20,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: const Duration(seconds: 2),
                    action: SnackBarAction(label: 'Detail', onPressed: () {}),
                    content: const Text(
                      'Pesan Berhasil',
                      style: TextStyle(
                        color: Colors.cyanAccent,
                      ),
                    ),
                  ),
                );
              },
              child: const Text(
                'Text Button x Snack Bar',
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
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text(
                        'Hapus Data',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      content: const Text('r u sure wanna delete this data?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            //untuk menutup pop up yg sedang terbuka
                          },
                          style:
                              TextButton.styleFrom(backgroundColor: Colors.red),
                          child: Text(
                            'No',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.green),
                          child: Text(
                            'Sure',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    );
                  },
                );
              },
              child: const Text(
                "Elevated Button x Allert Dialog",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text(
                        'Pilih Metode',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      children: [
                        SimpleDialogOption(
                          child: const Text('BCA'),
                          onPressed: () {},
                        ),
                        SimpleDialogOption(
                          onPressed: () {},
                          child: const Text('BRI'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {},
                          child: const Text('BSI'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text(
                "Outlined Button x Simple Dialog",
                style: TextStyle(
                  color: Color.fromARGB(255, 96, 30, 30),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.thumb_up),
            ),
            DropdownButton<String>(
                value: _selectedItem,
                items: const [
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
        child: const Icon(Icons.add),
      ),
      //FloatingActBut bisa tanpa body karena setara body
    );
  }
}
