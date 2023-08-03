

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Reusable_EButton extends StatelessWidget {
  final dynamic? EBUTTON_IconChild;
  final dynamic? EBUTTON_TextChild;
  final Color EBUTTON_Color;
  final Color? EBUTTON_ChildColor;
  final double? EBUTTON_Width;
  final double? EBUTTON_Height;
  final double? EBUTTON_Radious;
  VoidCallback onPressed;
  Reusable_EButton({
    super.key,
    required this.EBUTTON_Color,
    required this.onPressed,
    this.EBUTTON_ChildColor,
    this.EBUTTON_IconChild,
    this.EBUTTON_TextChild,
    this.EBUTTON_Width,
    this.EBUTTON_Height,
    this.EBUTTON_Radious,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 30, 10, 30),
      child: Container(
          decoration: BoxDecoration(
              color: EBUTTON_Color, borderRadius: BorderRadius.circular(15)),
          child: ElevatedButton(
            onPressed: onPressed,
            child: EBUTTON_TextChild,
            style: ButtonStyle(
              shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(EBUTTON_Radious!))),
              foregroundColor: MaterialStatePropertyAll(EBUTTON_ChildColor),
            ),
          )),
    );
  }
}
