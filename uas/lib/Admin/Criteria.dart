import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

class Criteria extends StatefulWidget {
  const Criteria({super.key});

  @override
  State<Criteria> createState() => _CriteriaState();
}

class _CriteriaState extends State<Criteria> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              TheCriteria("Modern House", "assets/RussianType.jpg"),
              TheCriteria("Russian House", "assets/Rumah.jpg"),
              TheCriteria("Indian House", "assets/Rumah.jpg"),
              TheCriteria("Italian House", "assets/RussianType.jpg"),
              TheCriteria("Aborigin House", "assets/RussianType.jpg"),
              TheCriteria("Modern House", "assets/Rumah.jpg"),
              TheCriteria("Modern House", "assets/Rumah.jpg"),
              TheCriteria("Modern House", "assets/RussianType.jpg"),
              TheCriteria("Modern House", "assets/RussianType.jpg"),
              TheCriteria("Modern House", "assets/Rumah.jpg"),
              TheCriteria("Modern House", "assets/Rumah.jpg"),
              TheCriteria("Modern House", "assets/RussianType.jpg"),
              TheCriteria("Modern House", "assets/RussianType.jpg"),
              TheCriteria("Modern House", "assets/Rumah.jpg"),
              TheCriteria("Modern House", "assets/Rumah.jpg"),
              TheCriteria("Modern House", "assets/RussianType.jpg"),
            ],
          ),
        ),
      ),
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

  ElevatedButton TheCriteria(name, thePhoto) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
      ),
      onPressed: () {},
      child: Container(
        height: 125,
        width: 125,
        decoration: BoxDecoration(
            // image: DecorationImage(
            //   image: AssetImage("../assets/Rumah.jpg"),
            //   fit: BoxFit.cover,
            // ),
            // color: Colors.cyan,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  thePhoto,
                  fit: BoxFit.cover,
                  height: 125,
                  width: 125,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color(0xff376E6C),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(3, 3))
                          ]),
                      child: Center(
                        child: primeText(name, 15, Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
