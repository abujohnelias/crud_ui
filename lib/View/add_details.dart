import 'package:crud_trial/Constants/Widgets/reUSE_button.dart';
import 'package:crud_trial/Constants/Widgets/reUSE_textfield.dart';
import 'package:crud_trial/Constants/color_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final group_list = <String>['A+', 'B+', 'AB+', 'O+', 'A-', 'B-', 'AB-', 'O-'];

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  String selected_val = group_list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Details",
          style: GoogleFonts.poppins(color: ColorConst.white, fontSize: 15),
        ),
        backgroundColor: ColorConst.redA,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Textfield(
            TEXTFIELD_label: "Name",
            TEXTFIELD_icon: Icons.account_circle_rounded,
          ),
          Textfield(
            TEXTFIELD_label: "Phone",
            TEXTFIELD_icon: Icons.phone,
            TEXTFIELD_length: 10,
          ),
          Textfield(TEXTFIELD_label: "Place", TEXTFIELD_icon: Icons.place),

          //dropdown button for showing blood group

          Padding(
            padding: const EdgeInsets.fromLTRB(30, 40, 30, 10),
            child: DropdownButtonFormField(
              icon: Icon(Icons.keyboard_arrow_down, color: ColorConst.redA),
              alignment: AlignmentDirectional.topEnd,
              borderRadius: BorderRadius.circular(12),
              decoration: InputDecoration(
                label: Text("Select Your Blood Group",
                    style: GoogleFonts.poppins(color: ColorConst.redA)),
                hoverColor: ColorConst.redA,
                // disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConst.redA)),
                // enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConst.redA)),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: ColorConst.redA,
                )),
                contentPadding: EdgeInsets.only(
                  left: 10,
                ),
              ),
              value: selected_val,
              items: group_list
                  .map((e) => DropdownMenuItem(
                        child: Text(e,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(color: ColorConst.redA))),
                        value: e,
                      ))
                  .toList(),
              onChanged: (val) {
                selected_val = val!;
              },
            ),
          ),
          Reusable_EButton(
            EBUTTON_Color: ColorConst.redA,
            onPressed: () {},
            EBUTTON_TextChild: Text("Submit"),
            EBUTTON_ChildColor: ColorConst.white,
            EBUTTON_Radious: 10,
            EBUTTON_Height: 200,
            EBUTTON_Width: 450,
          )
        ],
      ),
    );
  }
}
