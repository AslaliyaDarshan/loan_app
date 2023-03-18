import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app/view/UiScreen/Calculator/EMICalculator.dart';
import 'package:loan_app/view/UiScreen/Calculator/FDCalculator.dart';
import 'package:loan_app/view/UiScreen/Calculator/GSTCalculator.dart';
import 'package:loan_app/view/UiScreen/Calculator/SIPCalculator.dart';
import 'package:loan_app/view/constants/ConstantsClass.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    var mHeight = MediaQuery.of(context).size.height;
    var mWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: appBar("Calculator", mWidth),
      body: backGround(
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              height(mHeight * 0.01),
              Container(
                height: mHeight / 4.5,
                width: mWidth,
                color: Colors.white.withOpacity(0.5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  button(() {
                    Get.to(const EMICalculator());
                  }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                      "assets/image/emi.png", BoxFit.cover),
                  button(() {
                    Get.to(GstCalculator());
                  }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                      "assets/image/gst.png", BoxFit.cover),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  button(() {
                    Get.to(const SIPCalculator());
                  }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                      "assets/image/sip.png", BoxFit.cover),
                  button(() {
                    Get.to(const FDCalculator());
                  }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                      "assets/image/fd.png", BoxFit.cover),
                ],
              ),
              height(mHeight * 0.033),
              Container(
                height: mHeight / 4.5,
                width: mWidth,
                color: Colors.white.withOpacity(0.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
