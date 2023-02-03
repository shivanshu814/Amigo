// ignore_for_file: unused_import

import 'dart:convert';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:phone_otp_ui/phone.dart';
import 'package:phone_otp_ui/start.dart';
import 'package:phone_otp_ui/verify.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hive_flutter/adapters.dart';
import 'MaggiList.dart';
import 'chooseRes.dart';
import 'splaash.dart';

late Box box1;

Map<int, Color> color = {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
  200: Color.fromRGBO(136, 14, 79, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(136, 14, 79, .5),
  500: Color.fromRGBO(136, 14, 79, .6),
  600: Color.fromRGBO(136, 14, 79, .7),
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await Hive.initFlutter();
  box1 = await Hive.openBox('logindata');
  apicall();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  var c1;
  var c2;
  var c3;
  var c4;
  runApp(
    MaterialApp(
      initialRoute: 'start',
      debugShowCheckedModeBanner: false,
      routes: {
        'phone': (context) => const MyPhone(
              title: 'phone',
            ),
        'verify': (context) => const MyVerify(
              Phone: '',
            ),
        'start': (context) => SplashScreenPage(),
        'splaash': (context) => spalshscreen(),
        'chooseRes': (context) => ChooseRes(),
        'MaggiList': (context) => MaggiList(),
      },
    ),
  );
}

String stringResponse = "";
Map mapResponse = <String, dynamic>{};
void apicall() {
  Future apicall() async {
    http.Response response;
    response = await http.get(
      Uri.parse("http://admin.our.com/api/"),
    );
    if (response.statusCode == 200) {
      setState() {
        mapResponse = jsonDecode(response.body);
      }
    } else {
      return null;
    }
  }
}
