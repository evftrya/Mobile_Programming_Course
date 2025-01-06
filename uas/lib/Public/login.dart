import 'package:google_fonts/google_fonts.dart';
import 'package:uas/Public/register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1517999144091-3d9dca6d1e43?q=80&w=1854&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            )),
          ),
          Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // padding: const EdgeInsets.only(left: 20, right: 20),
                    width: MediaQuery.of(context).size.width * 1,
                    child: Container(
                      height: 270,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0),
                      ),
                      child: Center(
                        child: Text(
                          "Play Me",
                          style: GoogleFonts.lilyScriptOne(
                            textStyle: TextStyle(
                              color: Color(0xFF72CFCA),
                              fontSize: 50,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(microseconds: 300),
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                      top: 70,
                    ),
                    height: 530,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30)),
                    child: MediaQuery.removeViewInsets(
                      removeBottom: true,
                      context: context,
                      child: Column(
                        children: [
                          Text(
                            "Email or Password are incorrect",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 233, 75, 75)),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: myForm(),
                          ),
                          SizedBox(height: 20),
                          Center(
                            child: Container(
                              padding: EdgeInsets.only(
                                left: 50,
                                right: 50,
                                // top: 10,
                                // bottom: 10,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFF72CFCA),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                'Login',
                                style: GoogleFonts.lilyScriptOne(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()),
                              );
                            },
                            child: Text(
                              "I Dont Have an Account",
                              style: GoogleFonts.reemKufi(
                                textStyle: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget myForm() {
    return Form(
      child: Column(
        children: [
          MyField("EMAIL/USERNAME"),
          SizedBox(height: 20),
          MyField("PASSWORD")
        ],
      ),
    );
  }

  Widget MyField(txt) {
    return Container(
      padding: EdgeInsets.only(
        left: 15,
        right: 15,
        top: 10,
      ),
      // width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          color: Color(0xFFD9D9D9).withOpacity(0.2),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              child: Text(
                txt,
                style: GoogleFonts.reemKufi(
                  textStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          FractionallySizedBox(
            // widthFactor: 0.8,
            child: TextField(
              obscureText: ((txt == 'PASSWORD') || (txt == 'RETYPE PASSWORD'))
                  ? true
                  : false,
              obscuringCharacter: "*",
              style: GoogleFonts.reemKufi(
                textStyle: TextStyle(color: Colors.white),
              ),
              onChanged: (value) {
                print("cekcekcek");
              },
              decoration: InputDecoration(
                border: InputBorder.none,

                // contentMargin: EdgeInsets.only(left: 20, right: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
