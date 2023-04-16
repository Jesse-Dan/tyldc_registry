import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tyldc_registry/app/components/build_drawer_item.dart';
import 'package:tyldc_registry/app/tools/hex_method.dart';
import 'package:tyldc_registry/app/tools/theme.dart';
import 'package:tyldc_registry/app/widgets/build_textfields.dart';
import 'package:intl/intl.dart';

import 'components/build_drawer.dart';

class AppBuild extends StatefulWidget {
  static const routeName = '/app.build';
  AppBuild({super.key});

  @override
  State<AppBuild> createState() => _AppBuildState();
}

class _AppBuildState extends State<AppBuild> {
  final dobCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(),
        drawer: buildDrawer(context),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: KPinkColor,
          tooltip: 'Register Student',
          label: Row(
            children: const [
              Text('Register Student'),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.person_add_rounded)
            ],
          ),
          onPressed: (() async {
            await buildRegistrationForm(context);
          }),
        ));
  }

  buildRegistrationForm(BuildContext context) async {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              // insetPadding: EdgeInsets.zero,
              // contentPadding: EdgeInsets.zero,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              insetPadding: const EdgeInsets.only(
                  left: 40, right: 40, top: 20, bottom: 20),
              titlePadding: const EdgeInsets.all(0),
              contentPadding: const EdgeInsets.all(15),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 11.0,
                      left: 11.0,
                      right: 11.0,
                      bottom: 8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Registration Form'),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.close_rounded,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: HexColor('#F5F5F5'),
                  ),
                ],
              ),
              content: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Form(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        buildTextFields(
                            ctx: context,
                            errorText: '',
                            fieldTitle: 'First Name',
                            iserror: false,
                            label: 'Enter first name here',
                            onChanged: ((val) {}),
                            requireSuffix: false,
                            keyboardType: null),
                        buildTextFields(
                            ctx: context,
                            errorText: '',
                            fieldTitle: 'Middle Name',
                            iserror: false,
                            label: 'Enter middle name here',
                            onChanged: ((val) {}),
                            requireSuffix: false,
                            keyboardType: null),
                        buildTextFields(
                            ctx: context,
                            errorText: '',
                            fieldTitle: 'Last Name',
                            iserror: false,
                            label: 'Enter last name here',
                            onChanged: ((val) {}),
                            requireSuffix: false,
                            keyboardType: null),
                        buildTextFields(
                            ctx: context,
                            errorText: '',
                            fieldTitle: 'Gender',
                            iserror: false,
                            label: 'Enter gender name here',
                            onChanged: ((val) {}),
                            requireSuffix: false,
                            keyboardType: null),
                        buildTextFields(
                            ctx: context,
                            controller: dobCtl,
                            readOnly: true,
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                  initialDatePickerMode: DatePickerMode.year,
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2101));
                              if (pickedDate != null) {
                                String formattedDate =
                                    DateFormat('MM-dd-yyyy').format(pickedDate);
                                setState(() {
                                  dobCtl.text = formattedDate;
                                });
                              }
                            },
                            onClickIcon: (() {
                              dobCtl.clear();
                            }),
                            suffixIconsize: 15,
                            suffixIcon: Icons.clear_rounded,
                            errorText: '',
                            fieldTitle: 'Date Of Birth',
                            iserror: false,
                            label: 'Pick date of birth',
                            onChanged: ((val) {}),
                            requireSuffix: true,
                            keyboardType: null),
                        buildTextFields(
                          ctx: context,
                          errorText: '',
                          fieldTitle: 'Phone Number',
                          iserror: false,
                          label: 'Enter phone number',
                          onChanged: ((val) {}),
                          requireSuffix: false,
                          keyboardType: TextInputType.number,
                        ),
                        buildTextFields(
                            ctx: context,
                            errorText: '',
                            fieldTitle: 'Parent/ Gaurdian Name',
                            iserror: false,
                            label: 'Mr. / Mrs. John Doe ',
                            onChanged: ((val) {}),
                            requireSuffix: false,
                            keyboardType: null),
                        buildTextFields(
                          ctx: context,
                          errorText: '',
                          fieldTitle: 'Parent/ Gaurdian Phone Number',
                          iserror: false,
                          label: 'Enter parent/ gaurdian phone number ',
                          onChanged: ((val) {}),
                          requireSuffix: false,
                          keyboardType: TextInputType.number,
                        ),
                        buildTextFields(
                          ctx: context,
                          textFieldsType: TextFieldsType.multiline,
                          maxLines: 3,
                          errorText: 'Please fill this field ',
                          fieldTitle: 'Home Address',
                          iserror: false,
                          label: 'Enter residential home address',
                          onChanged: (i) {},
                          requireSuffix: false,
                          keyboardType: TextInputType.multiline,
                        ),
                        buildTextFields(
                          ctx: context,
                          errorText: '',
                          fieldTitle: 'Disability Cluster',
                          iserror: false,
                          label: 'Describe Disability Cluster ',
                          onChanged: ((val) {}),
                          requireSuffix: false,
                          keyboardType: TextInputType.number,
                        ),
                        buildTextFields(
                          ctx: context,
                          errorText: '',
                          fieldTitle: 'Commitment Fee',
                          iserror: false,
                          label: 'Has user paid comitment fee ? ',
                          onChanged: ((val) {}),
                          requireSuffix: false,
                          keyboardType: TextInputType.number,
                        ),
                        buildTextFields(
                          ctx: context,
                          errorText: '',
                          fieldTitle: 'Parent/ Gaurdian consent',
                          iserror: false,
                          label: 'Did parent / gauedian give consent ? ',
                          onChanged: ((val) {}),
                          requireSuffix: false,
                          keyboardType: TextInputType.number,
                        ),
                        buildTextFields(
                          ctx: context,
                          errorText: '',
                          fieldTitle: 'Pass Issued',
                          iserror: false,
                          label: 'Enter true / false',
                          onChanged: ((val) {}),
                          requireSuffix: false,
                          keyboardType: TextInputType.number,
                        ),
                        buildTextFields(
                          ctx: context,
                          errorText: '',
                          fieldTitle: 'Would Camp ?',
                          iserror: false,
                          label: 'Enter yes / no',
                          onChanged: ((val) {}),
                          requireSuffix: false,
                          keyboardType: TextInputType.number,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              actions: [
                Container(
                  height: 45,
                  width: double.infinity,
                  color: KPrimaryColor,
                )
              ],
            ));
  }
}
