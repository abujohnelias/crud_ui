import 'package:crud_trial/Constants/Widgets/textfield.dart';
import 'package:crud_trial/Constants/color_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("Add Details",style: GoogleFonts.poppins(color: ColorConst.white,fontSize: 15),),backgroundColor: ColorConst.redA,),
    body: Column(
      children: [
      Textfield(TEXTFIELD_label: "Name", TEXTFIELD_icon: Icons.account_circle_rounded,),
      Textfield(TEXTFIELD_label: "Phone", TEXTFIELD_icon: Icons.phone,)
      ],
    ),
    );
  }
}