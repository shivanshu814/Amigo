// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison, unnecessary_string_interpolations, deprecated_member_use
import 'dart:convert';
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart';
import 'package:phone_otp_ui/verify.dart';
import 'main.dart';
import 'package:http/http.dart' as http;

class MyPhone extends StatefulWidget {
  const MyPhone({Key? key, required String title}) : super(key: key);
  static String verify = "";

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  late Box box1;
  var Phone = '';
  // TextEditingController countryController = TextEditingController();
  TextEditingController PhoneController = TextEditingController();
  String phone = "";
  @override
  void initState() {
    Colors.black;
    super.initState();
    createBox();
  }

  void createBox() async {
    box1 = await Hive.openBox('logindata');
  }

  // ignore: non_constant_identifier_names
  signup() async {
    var headers = {
      'Content-Type': 'application/json',
      // 'Cookie':
      //     'token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYzYjkxODM3NWU3MjE4ZTc1ODIwMmY2MyIsImlhdCI6MTY3MzA3NDg4OCwiZXhwIjoxNjc1NjY2ODg4fQ.lSDOvNG2hyFEzzznQvw8d2vHsRxhf6yaY-MIsWjrpIM'
    };
    var request =
        http.Request('POST', Uri.parse('http://admin.our.com/api/getOTP'));
    request.body = json.encode({"phone_no": "$Phone"});
    //request.body = json.encode({"phone_no": "8839100911"});

    request.headers.addAll(headers);
    print("req" + request.toString());
    print("body" + request.body);
    print("headers" + request.headers.toString());

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
      print("otp sent succesfully");
      box1.put('phone', Phone);
    } else {
      print(response.reasonPhrase);
      print("failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFC61F),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    opacity: (0.3),
                    image: AssetImage("assets/overlay.png"),
                    fit: BoxFit.fitHeight)),
          ),
          Center(
            child: Container(child: Image.asset("assets/burger.png")),
          ),
          Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 60,
                  ),

//logo of amigo app

                  // Image.asset(
                  //   'assets/Logoamigo.jpeg',
                  //   width: 500,
                  //   height: 100,
                  // ),
                  Text(
                    "Content to be written",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "something one word",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                    ),
                  ),

                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 55,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "+91",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey.shade900,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                          // height: 40,
                        ),
                        Expanded(
                          child: TextField(
                            controller: PhoneController,
                            keyboardType: TextInputType.phone,
                            onChanged: (value) {
                              Phone = value;
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Mobile Number",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      //Navigator.pushNamed(context, 'verify');
                      Navigator.pushReplacementNamed(context, 'verify');
                      signup();
                    },
                    child: Container(
                      width: 280,
                      height: 65,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Send OTP",
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
