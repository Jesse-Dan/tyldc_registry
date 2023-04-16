import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyldc_registry/app/app.dart';
import 'package:tyldc_registry/app/components/custom_btn.dart';
import 'package:tyldc_registry/app/tools/theme.dart';
import 'package:tyldc_registry/responsive_dashboard/responsive/responsive_layout.dart';
import '../../app/widgets/build_textfields.dart';
import 'home.dart';

class Login extends StatelessWidget {
  static const routeName = '/auth.login';
  dynamic standartWidth = 752;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        body: Padding(
            padding: MediaQuery.of(context).size.width <= standartWidth
                ? const EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 10.0, right: 10.0)
                : const EdgeInsets.only(
                    top: 60.0, bottom: 60.0, left: 120.0, right: 120.0),
            child: Align(
                alignment: Alignment.center,
                child: Card(
                  color: MediaQuery.of(context).size.width <= standartWidth
                      ? Colors.yellow
                      : null,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)),
                  elevation: 5.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MediaQuery.of(context).size.width <= standartWidth
                          ? SizedBox()
                          : Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40.0),
                                      bottomLeft: Radius.circular(40.0)),
                                  color: Colors.blue,
                                ),
                                height: standartWidth,
                                width: 300,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 15),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Teens & Youth\nLeadership \nDevelopment \nCenter (CATY CAMP)',
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.dmSans(
                                                color: kSecondaryColor,
                                                fontSize: 30,
                                                fontWeight: FontWeight.w900),
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                16,
                                          ),
                                          Text(
                                            'To create an Account contact your admin for the admin authentication code.',
                                            textAlign: TextAlign.justify,
                                            style: GoogleFonts.dmSans(
                                                color: KPrimaryColor,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w900),
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                10,
                                          ),
                                          buildCostumBtn(
                                              text: 'Create an Account',
                                              isAbled: true,
                                              btnAbledColor: KLightBlueHexColor,
                                              textColor: KPrimaryColor,
                                              funct: () {
                                                Get.toNamed(Home.routeName);
                                              },
                                              changeColor: false,
                                              btnDisbledColor: kdisabledColor,
                                              width: null)
                                        ],
                                      ),
                                    )),
                              ),
                            ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              MediaQuery.of(context).size.width <= standartWidth
                                  ? BorderRadius.only(
                                      topLeft: Radius.circular(40.0),
                                      bottomLeft: Radius.circular(40.0),
                                      topRight: Radius.circular(40.0),
                                      bottomRight: Radius.circular(40.0))
                                  : BorderRadius.only(
                                      topRight: Radius.circular(40.0),
                                      bottomRight: Radius.circular(40.0)),
                          color: Colors.yellow,
                        ),
                        height: standartWidth,
                        width:
                            MediaQuery.of(context).size.width <= standartWidth
                                ? MediaQuery.of(context).size.width / 1.2
                                : 700,
                        child: Form(
                            child: Padding(
                          padding:
                              MediaQuery.of(context).size.width <= standartWidth
                                  ? const EdgeInsets.only(
                                      top: 67.0,
                                      bottom: 17.0,
                                      left: 32,
                                      right: 32)
                                  : const EdgeInsets.only(
                                      top: 64.0,
                                      bottom: 32.0,
                                      left: 64,
                                      right: 64),
                          child: Column(
                            children: [
                              Text(
                                'Admin DashBoard Log In',
                                style: GoogleFonts.abel(
                                    fontSize: 30, fontWeight: FontWeight.w500),
                              ),
                              buildTextFields(
                                  errorText: '',
                                  fieldTitle: 'Username',
                                  iserror: false,
                                  label: 'Enter username',
                                  onChanged: (val) {},
                                  requireSuffix: false,
                                  keyboardType: TextInputType.name,
                                  ctx: context),
                              buildPasswordTextFields(
                                  errorText: '',
                                  fieldTitle: 'Password',
                                  iserror: false,
                                  label: 'Enter password',
                                  onChanged: (val) {},
                                  requireSuffix: true,
                                  keyboardType: TextInputType.visiblePassword,
                                  obscured: true),
                              const SizedBox(height: 10),
                              const SizedBox(height: 40),
                              buildCostumBtn(
                                  text: 'Login',
                                  isAbled: true,
                                  btnAbledColor: KPrimaryColor,
                                  textColor: KBlueColor,
                                  funct: () {
                                    Get.toNamed(ResponsiveLayout.routeName);
                                  },
                                  changeColor: false,
                                  btnDisbledColor: kdisabledColor,
                                  width: null)
                            ],
                          ),
                        )),
                      )
                    ],
                  ),
                ))));
  }
}
