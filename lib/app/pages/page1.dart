import 'package:flutter/material.dart';
import 'package:tyldc_registry/app/components/build_drawer.dart';

class Page1 extends StatefulWidget {
  static const routeName = '/app.build.page1';
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor: Colors.blue[50],

      appBar: AppBar(),
      drawer: buildDrawer(context),
    );
  }
}
