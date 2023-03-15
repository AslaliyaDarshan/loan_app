import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:loan_app/view/IntroScreen.dart';
import 'package:loan_app/view/SplashScreen.dart';

import 'view/GuidanceScreen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: "/", page: () => const SplashScreen()),
        GetPage(name: "/GuidanceScreen", page: () => const GuidanceScreen()),
        GetPage(name: "/Intro", page: () => const Intro()),
      ],
    ),
  );
}
