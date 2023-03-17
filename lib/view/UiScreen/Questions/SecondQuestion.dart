import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app/view/UiScreen/Questions/ThirdScreen.dart';
import 'package:loan_app/view/constants/ConstantsClass.dart';

class SecondQuestion extends StatefulWidget {
  const SecondQuestion({Key? key}) : super(key: key);

  @override
  State<SecondQuestion> createState() => _SecondQuestionState();
}

class _SecondQuestionState extends State<SecondQuestion> {
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
                height: mHeight * 0.085,
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
                child:
                    text("How much do you earn?", Colors.white, mWidth * 0.06),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  income("No Income", mHeight, mWidth),
                  income("5000+", mHeight, mWidth),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  income("10000+", mHeight, mWidth),
                  income("20000+", mHeight, mWidth),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  income("50000+", mHeight, mWidth),
                  income("75000+", mHeight, mWidth),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  income("95000+", mHeight, mWidth),
                  income("1000000+", mHeight, mWidth),
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

  income(String pStrText, double pDblHeight, double pDblWidth) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        button(() {
          Get.to(const ThirdScreen());
        }, pDblHeight * 0.033, pDblHeight / 4.6, pDblWidth / 2.4,
            "assets/image/coin.png", BoxFit.cover),
        Padding(
          padding: EdgeInsets.only(bottom: pDblHeight * 0.005),
          child: text(pStrText, const Color(0xFFD89B13), pDblWidth * 0.07),
        ),
      ],
    );
  }
}
