import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app/view/UiScreen/Questions/SecondQuestion.dart';
import 'package:loan_app/view/constants/ConstantsClass.dart';

class FirstQuestion extends StatefulWidget {
  const FirstQuestion({Key? key}) : super(key: key);

  @override
  State<FirstQuestion> createState() => _FirstQuestionState();
}

class _FirstQuestionState extends State<FirstQuestion> {
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
                decoration: BoxDecoration(
                  color: buttonClr,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: text(
                    "In hitch method do you went to \ntakeThe Loan Amount?",
                    Colors.white,
                    mWidth * 0.06),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  button(() {
                    Get.to(const SecondQuestion());
                  }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                      "assets/image/bnk.png", BoxFit.cover),
                  button(() {
                    Get.to(const SecondQuestion());
                  }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                      "assets/image/csh.png", BoxFit.cover),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  button(() {
                    Get.to(const SecondQuestion());
                  }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                      "assets/image/cheque.png", BoxFit.cover),
                  button(() {
                    Get.to(const SecondQuestion());
                  }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                      "assets/image/upi.png", BoxFit.cover),
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
