import 'package:crud_trial/Constants/color_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Home",
            style: GoogleFonts.poppins(color: ColorConst.white, fontSize: 15),
          ),
          backgroundColor: ColorConst.redA),
      body: Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "/add");
          },
          child: Icon(Icons.add),
          foregroundColor: ColorConst.white,
          backgroundColor: ColorConst.redA),
    );
  }
}
