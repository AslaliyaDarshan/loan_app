import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:loan_app/view/UiScreen/HomeLoanScreen.dart';
import 'package:loan_app/view/UiScreen/HomeScreen.dart';
import 'view/UiScreen/GuidanceScreen.dart';
import 'view/UiScreen/GuideScreen.dart';
import 'view/UiScreen/IntroScreen.dart';
import 'view/UiScreen/SplashScreen.dart';
import 'view/UiScreen/StartScreen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: "/", page: () => const SplashScreen()),
        GetPage(name: "/GuidanceScreen", page: () => const GuidanceScreen()),
        GetPage(name: "/GuideScreen", page: () => const GuideScreen()),
        GetPage(name: "/Intro", page: () => const Intro()),
        GetPage(name: "/StartScreen", page: () => const StartScreen()),
        GetPage(name: "/HomeScreen", page: () => const HomeScreen()),
        GetPage(name: "/HomeLoanScreen", page: () => const HomeLoanScreen()),

      ],
    ),
  );
}
