import 'package:crud_trial/Constants/color_const.dart';
import 'package:crud_trial/View/add_details.dart';
import 'package:crud_trial/view/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red
          // primaryColor: ColorConst.redA
          ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/home": (context) => Homepage(),
        "/add": (context) => details(),
      },
      initialRoute: '/home',
    );
  }
}
