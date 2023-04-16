// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../tools/theme.dart';

buildDrawerItem(context, {toolip, title, icon, route}) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        hoverColor: Colors.transparent,
        onHover: ((value) {
          KPrimaryColor.withOpacity(0.1);
        }),
        onTap: (() async {
          await Get.toNamed(route);
          Get.back();
        }),
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(
                icon,
                size: 35,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                title,
                textAlign: TextAlign.left,
                style: GoogleFonts.dmSans(
                    color: kSecondaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w900),
              )
            ],
          ),
        ),
      ),
    );
