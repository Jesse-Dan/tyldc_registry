import 'package:get/get.dart';
import 'package:tyldc_registry/app/pages/page1.dart';
import 'package:tyldc_registry/app/pages/page2.dart';
import 'package:tyldc_registry/auth/screens/Login.dart';
import 'package:tyldc_registry/app/app.dart';
import '../auth/screens/home.dart';
import '../responsive_dashboard/responsive/desktop_body.dart';
import '../responsive_dashboard/responsive/mobile_body.dart';
import '../responsive_dashboard/responsive/responsive_layout.dart';
import '../responsive_dashboard/responsive/tablet_body.dart';

var appRoutes = [
  ///initial Route
  GetPage(name: Home.routeName, page: () => Home()),

  /// Intro routes
  GetPage(name: AppBuild.routeName, page: () => AppBuild()),

  /// Auth routes
  GetPage(name: Login.routeName, page: () => Login()),

  /// App route];
  GetPage(name: Page1.routeName, page: () => Page1()),
  GetPage(name: Page2.routeName, page: () => Page2()),
  GetPage(
      name: ResponsiveLayout.routeName,
      page: () => ResponsiveLayout(
          mobileBody: MobileScaffold(),
          tabletBody: TabletScaffold(),
          desktopBody: DesktopScaffold()))
];
