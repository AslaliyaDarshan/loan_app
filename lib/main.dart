import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:loan_app/view/UiScreen/GuideForLoan/CalculatorScreen.dart';
import 'package:loan_app/view/UiScreen/GuideForLoan/GuideForLoan.dart';
import 'package:loan_app/view/UiScreen/HomeScreen/AgricultureLoan.dart';
import 'package:loan_app/view/UiScreen/HomeScreen/BikeLoan.dart';
import 'package:loan_app/view/UiScreen/HomeScreen/BusinessLoan.dart';
import 'package:loan_app/view/UiScreen/HomeScreen/CarLoan.dart';
import 'package:loan_app/view/UiScreen/HomeScreen/CreditcardLoan.dart';
import 'package:loan_app/view/UiScreen/HomeScreen/EducationLoan.dart';
import 'package:loan_app/view/UiScreen/HomeScreen/GoldLoan.dart';
import 'package:loan_app/view/UiScreen/HomeScreen/HomeLoan.dart';
import 'package:loan_app/view/UiScreen/HomeScreen.dart';
import 'package:loan_app/view/UiScreen/HomeScreen/PersonalLoan.dart';
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
        GetPage(name: "/GuideForLoan", page: () => const GuideForLoan()),
        GetPage(name: "/HomeLoan", page: () => const HomeLoan()),
        GetPage(name: "/PersonalLoan", page: () => const PersonalLoan()),
        GetPage(name: "/BusinessLoan", page: () => const BusinessLoan()),
        GetPage(name: "/CreditCardLoan", page: () => const CreditCardLoan()),
        GetPage(name: "/EducationLoan", page: () => const EducationLoan()),
        GetPage(name: "/CarLoan", page: () => const CarLoan()),
        GetPage(name: "/BikeLoan", page: () => const BikeLoan()),
        GetPage(name: "/AgricultureLoan", page: () => const AgricultureLoan()),
        GetPage(name: "/GoldLoan", page: () => const GoldLoan()),
        GetPage(
            name: "/CalculatorScreen", page: () => const CalculatorScreen()),
      ],
    ),
  );
}
