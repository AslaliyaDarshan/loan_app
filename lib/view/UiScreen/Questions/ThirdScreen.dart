import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app/view/UiScreen/Questions/FourthScreen.dart';
import 'package:loan_app/view/constants/ConstantsClass.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    var mHeight = MediaQuery.of(context).size.height;
    var mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: backGround(
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: mHeight * 0.03),
                  height: mHeight / 4.5,
                  width: mWidth,
                  color: Colors.white.withOpacity(0.5)),
              Container(
                height: mHeight * 0.1,
                width: mWidth,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: buttonClr,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: text("What is your employment status?", Colors.white,
                    mWidth * 0.058),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  button(() {
                    Get.to(const FourthScreen());
                  }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                      "assets/image/salary.png", BoxFit.cover),
                  button(() {
                    Get.to(const FourthScreen());
                  }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                      "assets/image/emp.png", BoxFit.cover),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  button(() {
                    Get.to(const FourthScreen());
                  }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                      "assets/image/student.png", BoxFit.cover),
                  button(() {
                    Get.to(const FourthScreen());
                  }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                      "assets/image/unemp.png", BoxFit.cover),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: mHeight * 0.03),
                  height: mHeight / 4.5,
                  width: mWidth,
                  color: Colors.white.withOpacity(0.5)),
            ],
          ),
        ),
      ),
    );
  }
}
