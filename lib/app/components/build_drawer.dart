import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tyldc_registry/app/tools/theme.dart';
import 'package:tyldc_registry/data/dashboard_drawer_data.dart';

import 'build_drawer_item.dart';

Drawer buildDrawer(BuildContext context) {
  final dashBoardItemList = listOfDashBoardDrawerItem;
  return Drawer(
    child: Scaffold(
      backgroundColor: KPinkColor.withOpacity(0.3),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: kblackColor,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        title: const Text('Admin Registry'),
      ),
      bottomSheet: Container(
          padding: const EdgeInsets.only(right: 8),
          width: double.infinity,
          height: 30,
          child: const Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Developed by: Jesse Finn',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          )),
      body: ListView.builder(
        itemCount: dashBoardItemList.length,
        itemBuilder: ((context, index) => buildDrawerItem(context,
            title: dashBoardItemList[index].title,
            icon: dashBoardItemList[index].icon,
            route: dashBoardItemList[index].route)),
      ),
    ),
  );
}
