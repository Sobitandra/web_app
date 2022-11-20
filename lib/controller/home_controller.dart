import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/auth_screens/register_screen.dart';
import '../screens/main_home.dart';

class HomeController extends GetxController{
  RxBool showDrawer = true.obs;
  RxInt currentRoute = 1.obs;
  RxList<ScreenRoute> screens = <ScreenRoute>[
    ScreenRoute(const MainScreens(), title: "Home"),
    ScreenRoute(const RegistrationScreen(), title: "Registration"),
  ].obs;
}

class ScreenRoute {
  final String title;
  final Widget screen;

  ScreenRoute(this.screen, {required this.title});
}