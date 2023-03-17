import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app/view/UiScreen/Questions/FirstQuestion.dart';
import 'package:loan_app/view/constants/ConstantsClass.dart';
import 'package:page_transition/page_transition.dart';

import '../SplashScreen.dart';

class HomeLoan extends StatefulWidget {
  const HomeLoan({Key? key}) : super(key: key);

  @override
  State<HomeLoan> createState() => _HomeLoanState();
}

class _HomeLoanState extends State<HomeLoan> {
  dynamic data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    var mHeight = MediaQuery.of(context).size.height;
    var mWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          DraggableHome(
            physics: const BouncingScrollPhysics(),
            appBarColor: const Color(0xFF003676),
            leading: IconButton(
              splashRadius: 25,
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                size: mWidth * 0.09,
              ),
            ),
            headerExpandedHeight: 0.57,
            fullyStretchable: true,
            curvedBodyRadius: 20,
            stretchMaxHeight: 0.88,
            title: text("${data[0]["title"]}", Colors.white, mWidth * 0.075),
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
            backgroundColor: const Color(0xFF0D4C9D),
            headerWidget: backGround(
              Padding(
                padding: EdgeInsets.only(top: mHeight * 0.01),
                child: Column(
                  children: [
                    Image.asset(
                      "${data[1]["image"]}",
                      fit: BoxFit.contain,
                      height: mHeight / 2,
                    ),
                    text("Get Easy & Fast Loan", Colors.white, mWidth * 0.065),
                  ],
                ),
              ),
            ),
            body: [
              Container(
                height: mHeight / 4.5,
                width: mWidth,
                color: Colors.white.withOpacity(0.5),
              ),
              loanDetailText("Home", context)
            ],
          ),
          InkWell(
            onTap: () {
              Get.to(const FirstQuestion());
            },
            child: Container(
              height: mHeight * 0.068,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              decoration: BoxDecoration(
                color: buttonClr,
                borderRadius: BorderRadius.circular(35),
              ),
              child: text("Next", Colors.white, mWidth * 0.09),
            ),
          )
        ],
      ),
    );
  }
}
