import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app/view/constants/ConstantsClass.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var mHeight = MediaQuery.of(context).size.height;
    var mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: DraggableHome(
        physics: const BouncingScrollPhysics(),
        appBarColor: const Color(0xFF003676),
        headerExpandedHeight: 0.65,
        fullyStretchable: true,
        backgroundColor: const Color(0xFF3D8BF1),
        stretchMaxHeight: 0.85,
        title: text("Instant Loan", Colors.white, mWidth * 0.075),
        expandedBody: backGround(
          Column(
            children: [
              Image.asset(
                "assets/image/phone.png",
                fit: BoxFit.contain,
                height: mHeight / 2,
              ),
              text("Instant Loan", Colors.white, mWidth * 0.12),
              text("Get Easy & Fast Loan", Colors.white, mWidth * 0.065),
            ],
          ),
        ),
        headerWidget: backGround(
          Column(
            children: [
              Image.asset(
                "assets/image/phone.png",
                fit: BoxFit.cover,
                height: mHeight / 2,
              ),
              text("Instant Loan", Colors.white, mWidth * 0.12),
              text("Get Easy & Fast Loan", Colors.white, mWidth * 0.065),
            ],
          ),
        ),
        body: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              button(() {
                Get.toNamed(
                  "/HomeLoanScreen",
                  arguments: [
                    {"title": "Guide For Loan"},
                    {"image": "assets/image/guideForLoan.png"}
                  ],
                );
              }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                  "assets/image/guideForLoan.png", BoxFit.cover),
              button(() {
                Get.toNamed(
                  "/HomeLoanScreen",
                  arguments: [
                    {"title": "Home Loan Guide"},
                    {"image": "assets/image/home.png"}
                  ],
                );
              }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                  "assets/image/home.png", BoxFit.cover),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              button(() {
                Get.toNamed(
                  "/HomeLoanScreen",
                  arguments: [
                    {"title": "Personal Loan Guide"},
                    {"image": "assets/image/personal.png"}
                  ],
                );
              }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                  "assets/image/personal.png", BoxFit.cover),
              button(() {
                Get.toNamed(
                  "/HomeLoanScreen",
                  arguments: [
                    {"title": "Business Loan Guide"},
                    {"image": "assets/image/business.png"}
                  ],
                );
              }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                  "assets/image/business.png", BoxFit.cover),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              button(() {
                Get.toNamed(
                  "/HomeLoanScreen",
                  arguments: [
                    {"title": "Creditcard Loan Guide"},
                    {"image": "assets/image/credit.png"}
                  ],
                );
              }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                  "assets/image/credit.png", BoxFit.cover),
              button(() {
                Get.toNamed(
                  "/HomeLoanScreen",
                  arguments: [
                    {"title": "Education Loan Guide"},
                    {"image": "assets/image/education.png"}
                  ],
                );
              }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                  "assets/image/education.png", BoxFit.cover),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              button(() {
                Get.toNamed(
                  "/HomeLoanScreen",
                  arguments: [
                    {"title": "Car Loan Guide"},
                    {"image": "assets/image/car.png"}
                  ],
                );
              }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                  "assets/image/car.png", BoxFit.cover),
              button(() {
                Get.toNamed(
                  "/HomeLoanScreen",
                  arguments: [
                    {"title": "Bike Loan Guide"},
                    {"image": "assets/image/bike.png"}
                  ],
                );
              }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                  "assets/image/bike.png", BoxFit.cover),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              button(() {
                Get.toNamed(
                  "/HomeLoanScreen",
                  arguments: [
                    {"title": "Agriculture Loan Guide"},
                    {"image": "assets/image/agriculture.png"}
                  ],
                );
              }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                  "assets/image/agriculture.png", BoxFit.cover),
              button(() {
                Get.toNamed(
                  "/HomeLoanScreen",
                  arguments: [
                    {"title": "Gold Loan Guide"},
                    {"image": "assets/image/gold.png"}
                  ],
                );
              }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                  "assets/image/gold.png", BoxFit.cover),
            ],
          ),
        ],
      ),
    );
  }

  button(void Function() onTap, double pDblTopPadding, double pDblHeight,
      double pDblWidth, String pStrUrl, BoxFit pBoxFit) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        margin: EdgeInsets.only(top: pDblTopPadding),
        height: pDblHeight,
        width: pDblWidth,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: const Color(0xFF62A2F5),
            width: 5,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 6,
              blurRadius: 30,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(pStrUrl, fit: pBoxFit),
        ),
      ),
    );
  }
}
