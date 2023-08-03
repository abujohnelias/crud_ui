import 'package:crud_trial/Constants/color_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Textfield extends StatelessWidget {
  final String TEXTFIELD_label;
  final TEXTFIELD_icon;
  int? TEXTFIELD_length;
  double? TEXTFIELD_border;
  Textfield({
    super.key,
    required this.TEXTFIELD_label,
    required this.TEXTFIELD_icon,
    this.TEXTFIELD_length,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        cursorColor: ColorConst.red,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 0),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorConst.red, width: 2),
          ),
          label: Row(
            children: [
              Icon(TEXTFIELD_icon, color: ColorConst.redA),
              SizedBox(
                width: 10,
              ),
              Text(TEXTFIELD_label,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: ColorConst.redA))),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
        maxLength: TEXTFIELD_length,
        // keyboardType: TextInputType.number
      ),
    );
  }
}
