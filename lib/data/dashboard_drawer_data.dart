import 'package:flutter/material.dart';
import 'package:tyldc_registry/app/pages/page2.dart';
import 'package:tyldc_registry/auth/screens/Login.dart';

import '../app/app.dart';
import '../app/pages/page1.dart';
import '../model/dashboard_drawer_model.dart';

List<DashBoardDrawerModel> listOfDashBoardDrawerItem = [
  DashBoardDrawerModel(
      title: 'DashBaord',
      icon: (Icons.dashboard_rounded),
      route: AppBuild.routeName),
  DashBoardDrawerModel(
      title: 'All Registered',
      icon: (Icons.people_rounded),
      route: Page1.routeName),
  DashBoardDrawerModel(
      title: 'Admin Profile', icon: (Icons.work), route: Page2.routeName),
  DashBoardDrawerModel(
      title: 'Log Out', icon: (Icons.logout_rounded), route: Login.routeName),
];
