import 'package:flutter/material.dart';
import 'package:tyldc_registry/app/components/build_drawer.dart';

class Page2 extends StatefulWidget {
  static const routeName = '/app.build.page2';

  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(),
      drawer: buildDrawer(context),
    );
  }
}
