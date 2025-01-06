import 'package:flutter/material.dart';

class tugas_6_lms extends StatefulWidget {
  const tugas_6_lms({super.key});

  @override
  State<tugas_6_lms> createState() => _tugas_6_lmsState();
}

class _tugas_6_lmsState extends State<tugas_6_lms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                padding: const EdgeInsets.all(0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.grey,
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 50.0,
                        height: 50.0,
                        margin: const EdgeInsets.all(20.0),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const Text(
                        "Native App",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 30,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          title: const Text(
                            'Detail',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          content: SizedBox(
                            width: MediaQuery.of(context).size.width - 40,
                            height: 150,
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.zero,
                            // ),
                            child: Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: const Text(
                                      'Native App',
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.blue,
                                        // backgroundColor: Colors.red,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: const Text(
                                      'Android, IOS, Web Javascript, Dart',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Close',
                                style: TextStyle(
                                    color: Colors.green, fontSize: 20),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              const SizedBox(
                width: 20,
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                padding: const EdgeInsets.all(0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.grey,
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 50.0,
                        height: 50.0,
                        margin: const EdgeInsets.all(20.0),
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const Text(
                        "Hybrid App",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 30,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          title: const Text(
                            'Detail',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          content: SizedBox(
                            width: MediaQuery.of(context).size.width - 40,
                            height: 150,
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.zero,
                            // ),
                            child: Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: const Text(
                                      'Hybrid App',
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.blue,
                                        // backgroundColor: Colors.red,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: const Text(
                                      'Android, IOS, Web Javascript, Dart',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Close',
                                style: TextStyle(
                                    color: Colors.green, fontSize: 20),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
