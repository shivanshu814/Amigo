import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'phone.dart';

class spalshscreen extends StatefulWidget {
  const spalshscreen({super.key});

  @override
  State<spalshscreen> createState() => _spalshscreenState();
}

class _spalshscreenState extends State<spalshscreen> {
  late Box box2;

  @override
  void initState() {
    super.initState();
    startSplashScreen();
    getData();
  }

  void getData() async {
    box2 = await Hive.openBox('logindata');
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 10);
    return Timer(
      duration,
      () {
        print("splash" + box2.get('isLogged', defaultValue: false).toString());
        print(box2.get("isLogged"));

        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>
        // box2.get('isLogged',defaultValue: false)?MyPhone(title: "phone"):Verify()
        //   ,),);

        // Navigator.of(context).pushReplacement(
        // MaterialPageRoute(
        //   builder: (_) =>
        //       //box2.get('isLogged',defaultValue: false)?MyPhone(title: "phone"):Verify(),
        //       box2.get('isLogged', defaultValue: false)
        //           ? MyPhone(title: "phone")
        //           : Landing(),
        //enter here the entering page after login
        // ),
        // );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Color(0xffcf2c4e),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Stack(
                    children: [
                      Container(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(),
                            color: Color(0xffcf2c4e),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                opacity: (0.3),
                                image: AssetImage("assets/overlay.png"),
                                fit: BoxFit.fitHeight)),
                      ),
                      Center(
                        child:
                            Container(child: Image.asset("assets/hotpot.png")),
                      ),
                    ],
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0),
                        child: Text(
                          "Tell me",
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0),
                        child: Text(
                          "what do you want",
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0),
                        child: Text(
                          "CHAL BHAI TUJHE KUCH KHILATA HUU",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontFamily: "IslandMoments",
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0),
                        child: Text(
                          "CHAL BHAI TUJHE KUCH KHILATA HUU",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontFamily: "IslandMoments",
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 35.0),
                      //   child: Text(
                      //     "explore, study, follow the arrival of books,",
                      //     style: GoogleFonts.lato(
                      //         textStyle: TextStyle(color: Colors.grey[600])),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 35.0),
                      //   child: Text(
                      //     "get into good habbit of reading.",
                      //     style: GoogleFonts.lato(
                      //         textStyle: TextStyle(color: Colors.grey[600])),
                      //   ),
                      // ),
                      SizedBox(
                        height: 45,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60.0),
                        child: GestureDetector(
                          onTap: (() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return MyPhone(
                                  title: '',
                                );
                              }),
                            );
                          }),
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "LogIn/SignUp",
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900)),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
