// ignore_for_file: camel_case_types
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

import '../tools/hex_method.dart';
import '../tools/theme.dart';
import '../widgets/defaultSpinner.dart';

class buildCostumBtn extends StatelessWidget {
  String text;
  final HexColor btnDisbledColor;
  final HexColor btnAbledColor;
  final HexColor textColor;
  final Function() funct;
  final bool isAbled;
  final bool changeColor;
  final bool addLoader;
  dynamic width;
  dynamic loaderColor;
  buildCostumBtn(
      {Key? key,
      required this.isAbled,
      this.text = '',
      required this.btnAbledColor,
      required this.textColor,
      required this.funct,
      required this.changeColor,
      required this.btnDisbledColor,
      this.addLoader = false,
      this.loaderColor,
     required  this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 0),
      child: GestureDetector(
        onTap: isAbled
            ? !addLoader
                ? funct
                : null
            : null,
        child: Container(
          decoration: BoxDecoration(
            color: isAbled
                ? addLoader
                    ? btnAbledColor.withOpacity(0.5)
                    : btnAbledColor
                : btnDisbledColor,
            borderRadius: BorderRadius.circular(5),
          ),
          height: 50,
          width: width?? double.infinity,
          child: Center(
            child: addLoader
                ? spiner(
                    loaderColor: loaderColor ?? KPrimaryColor,
                    height: 3,
                    width: 3)
                : Text(
                    text,
                    style: GoogleFonts.dmSans(
                        color: addLoader ? kblackColor : textColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
          ),
        ),
      ),
    );
  }
}
