import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas/Admin/AllertQuestion/SlideAllert.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Wrap(
            runSpacing: 20,
            children: [
              Question("YANG MANA YANG KAMU SUKA?"),
              Question("MENURUTMU YANG MANA YANG LEBIH MENARIK?"),
              Question(
                  "JIKA KAMU TERJEBAK DISUATU HUTAN, APA YANG AKAN KAMU LAKUKAN?"),
              Question("YANG MANA YANG KAMU SUKA?"),
              Question("MENURUTMU YANG MANA YANG LEBIH MENARIK?"),
              Question(
                  "JIKA KAMU TERJEBAK DISUATU HUTAN, APA YANG AKAN KAMU LAKUKAN?"),
              Question("YANG MANA YANG KAMU SUKA?"),
              Question("MENURUTMU YANG MANA YANG LEBIH MENARIK?"),
              Question(
                  "JIKA KAMU TERJEBAK DISUATU HUTAN, APA YANG AKAN KAMU LAKUKAN?"),
              Question("YANG MANA YANG KAMU SUKA?"),
              Question("MENURUTMU YANG MANA YANG LEBIH MENARIK?"),
              Question(
                  "JIKA KAMU TERJEBAK DISUATU HUTAN, APA YANG AKAN KAMU LAKUKAN?"),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  // width: MediaQuery.of(context).size.width,
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.add))),
            ),
          ],
        ),
      ],
    );
  }

  Color primeColor() {
    return Color(0xFF72CFCA);
  }

  Color secondColor() {
    return Colors.white;
  }

  Color thirdColor() {
    return Colors.black;
  }

  Text primeText(txt, double size, color) {
    return Text(
      txt,
      style: GoogleFonts.reemKufi(
        textStyle: TextStyle(
          color: color,
          fontSize: size,
        ),
      ),
    );
  }

  ElevatedButton Question(question) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
      ),
      onPressed: () {
        ShowDetilQuestion().show(context);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Color(0xff121212).withOpacity(0.8),
              boxShadow: [
                BoxShadow(
                    color: primeColor().withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(3, 3))
              ],
              borderRadius: BorderRadius.circular(10)),
          child: primeText(question, 15, Colors.white),
        ),
      ),
    );
  }
}

class ShowDetilQuestion {
  List<String?> selectedTypes = [null, null, null];
  List<String?> selectedStatuss = [null, null, null];
  String? selectedValue;
  void show(BuildContext context) {
    PageController PageAllertController = PageController();
    int currentPage = 0;

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (context, StateSetter setState) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              backgroundColor: Colors.white,
              title: Text("title"),
              content: Container(
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        child:
                            Text("you must add as much as your criteria exist"),
                      ),
                    ),
                    SizedBox(
                      height: 250,
                      child: PageView(
                        controller: PageAllertController,
                        onPageChanged: (index) {
                          setState(() {
                            currentPage = index;
                          });
                        },
                        scrollDirection: Axis.horizontal,
                        children: [
                          Slideallert(
                            imagePath: "assets/RussianType.jpg",
                            types: [
                              Type("1", "Luxury Type"),
                              Type("2", "Modern Type")
                            ],
                            selectedType: selectedTypes[0],
                            selectedStatus: selectedStatuss[0],
                            onTypeChanged: (value) {
                              setState(() {
                                selectedTypes[0] = value;
                              });
                            },
                            onStatusChanged: (value) {
                              setState(() {
                                selectedStatuss[0] = value;
                              });
                            },
                          ),
                          Slideallert(
                            imagePath: "assets/RussianType.jpg",
                            types: [
                              Type("1", "testing Type"),
                              Type("2", "2 Type")
                            ],
                            selectedType: selectedTypes[0],
                            selectedStatus: selectedStatuss[0],
                            onTypeChanged: (value) {
                              setState(() {
                                selectedTypes[0] = value;
                              });
                            },
                            onStatusChanged: (value) {
                              setState(() {
                                selectedStatuss[0] = value;
                              });
                            },
                          ),
                          Slideallert(
                            imagePath: "assets/RussianType.jpg",
                            types: [
                              Type("1", "test 3 Type"),
                              Type("2", "Modern 3 Type")
                            ],
                            selectedType: selectedTypes[0],
                            selectedStatus: selectedStatuss[0],
                            onTypeChanged: (value) {
                              setState(() {
                                selectedTypes[0] = value;
                              });
                            },
                            onStatusChanged: (value) {
                              setState(() {
                                selectedStatuss[0] = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List<Widget>.generate(
                            3,
                            (index) => buildIndicator(index, currentPage),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          });
        });
  }

  AnimatedContainer buildIndicator(int index, int currentPage) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 4),
      height: 8,
      width: currentPage == index ? 16 : 8,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  Map<String, String> Type(value, text) {
    return {"value": value, "text": text};
  }
}
