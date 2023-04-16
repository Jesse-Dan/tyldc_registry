// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tyldc_registry/auth/screens/Login.dart';
import 'package:tyldc_registry/app/tools/theme.dart';
import 'package:tyldc_registry/routes/routes.dart';
import 'app/app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(primaryColor: KPrimaryColor),
      title: 'TYLDC PORTAL',
      getPages: appRoutes,
      initialRoute: Login.routeName,
    );
  }
}
