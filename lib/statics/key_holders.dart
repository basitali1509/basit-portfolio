import 'package:flutter/material.dart';

class KeyHolders {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();

  static final GlobalKey aboutKey = GlobalKey();
  static final GlobalKey educationKey = GlobalKey();
  static final GlobalKey personalProjectsKey = GlobalKey();
  static final GlobalKey skillsAchievements = GlobalKey();
  static final GlobalKey contactKey = GlobalKey();
  static final GlobalKey footerKey = GlobalKey();
}
