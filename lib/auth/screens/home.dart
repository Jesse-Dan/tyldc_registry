import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyldc_registry/auth/widgets/agree.dart';
import 'package:tyldc_registry/app/components/custom_btn.dart';
import 'package:tyldc_registry/app/tools/hex_method.dart';
import 'package:tyldc_registry/app/tools/theme.dart';
import 'package:tyldc_registry/app/widgets/build_textfields.dart';
import '../widgets/gender.dart';
import 'Login.dart';

class Home extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        body: Padding(
            padding: const EdgeInsets.only(
                top: 60.0, bottom: 60.0, left: 120.0, right: 120.0),
            child: Align(
                alignment: Alignment.center,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)),
                  elevation: 5.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MediaQuery.of(context).size.width > 600
                          ? Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40.0),
                                      bottomLeft: Radius.circular(40.0)),
                                  color: Colors.blue,
                                ),
                                height: 600,
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
                                            'Already have an account? Log In.',
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
                                                4,
                                          ),
                                          buildCostumBtn(
                                              text: 'Log In',
                                              isAbled: true,
                                              btnAbledColor: KLightBlueHexColor,
                                              textColor: KPrimaryColor,
                                              funct: () {
                                                Get.toNamed(Login.routeName);
                                              },
                                              changeColor: false,
                                              btnDisbledColor: kdisabledColor,
                                              width: null)
                                        ],
                                      ),
                                    )),
                              ),
                            )
                          : SizedBox(),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40.0),
                              bottomRight: Radius.circular(40.0)),
                          color: Colors.yellow,
                        ),
                        height: 600,
                        width: 700,
                        child: Form(
                            child: Padding(
                          padding: const EdgeInsets.only(
                              top: 64.0, bottom: 32.0, left: 64, right: 64),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(
                                  'Admin DashBoard Sign Up',
                                  style: GoogleFonts.abel(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500),
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
                                buildTextFields(
                                    errorText: '',
                                    fieldTitle: 'First Name',
                                    iserror: false,
                                    label: 'Enter firstname',
                                    onChanged: (val) {},
                                    requireSuffix: false,
                                    keyboardType: TextInputType.name,
                                    ctx: context),
                                buildTextFields(
                                    errorText: '',
                                    fieldTitle: 'Last Name',
                                    iserror: false,
                                    label: 'Enter last name',
                                    onChanged: (val) {},
                                    requireSuffix: false,
                                    keyboardType: TextInputType.name,
                                    ctx: context),
                                buildTextFields(
                                    errorText: '',
                                    fieldTitle: 'Email',
                                    iserror: false,
                                    label: 'Enter email',
                                    onChanged: (val) {},
                                    requireSuffix: false,
                                    keyboardType: TextInputType.emailAddress,
                                    ctx: context),
                                buildTextFields(
                                    errorText: '',
                                    fieldTitle: 'Role',
                                    iserror: false,
                                    label: 'Enter role',
                                    onChanged: (val) {},
                                    requireSuffix: false,
                                    keyboardType: TextInputType.name,
                                    ctx: context),
                                buildTextFields(
                                    errorText: '',
                                    fieldTitle: 'Admin Authentication Code',
                                    iserror: false,
                                    label: 'Enter role',
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
                                const SizedBox(
                                  height: 40,
                                ),
                                buildCostumBtn(
                                    text: 'Create Account',
                                    isAbled: true,
                                    btnAbledColor: KPrimaryColor,
                                    textColor: KBlueColor,
                                    funct: () {},
                                    changeColor: false,
                                    btnDisbledColor: kdisabledColor,
                                    width: null)
                              ],
                            ),
                          ),
                        )),
                      )
                    ],
                  ),
                ))));
  }
}
