import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Slideallert extends StatefulWidget {
  final String imagePath;
  final List<Map<String, String>> types;
  final String? selectedType;
  final String? selectedStatus;
  final Function(String) onTypeChanged;
  final Function(String) onStatusChanged;
  const Slideallert({
    super.key,
    required this.imagePath,
    required this.types,
    required this.selectedType,
    required this.selectedStatus,
    required this.onTypeChanged,
    required this.onStatusChanged,
  });

  @override
  State<Slideallert> createState() => _SlideallertState();
}

class _SlideallertState extends State<Slideallert> {
  String? selectedType;
  String? selectedStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Center(
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    widget.imagePath,
                    fit: BoxFit.cover,
                    height: 125,
                    width: 125,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text("TYPE"),
                        ),
                        Container(
                          child: DropdownButton<String>(
                            value: selectedType,
                            hint: Text("Choose Type"),
                            items: [
                              option("1", "Modern House"),
                              option("2", "Modern Miles"),
                            ],
                            onChanged: (value) {
                              setState(() {
                                selectedType = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text("STATUS"),
                        ),
                        Container(
                          child: DropdownButton<String>(
                            value: selectedStatus,
                            hint: Text("Choose Status"),
                            items: [
                              option("1", "Active"),
                              option("0", "NonActive"),
                            ],
                            onChanged: (value) {
                              setState(() {
                                selectedStatus = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  DropdownMenuItem<String> option(String value, String text) {
    return DropdownMenuItem(
      value: value,
      child: Text(text),
    );
  }
}
