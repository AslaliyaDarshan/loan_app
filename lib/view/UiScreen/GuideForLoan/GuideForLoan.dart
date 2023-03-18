import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app/view/UiScreen/GuideForLoan/ATMScreen.dart';
import 'package:loan_app/view/UiScreen/GuideForLoan/BankInformation.dart';
import 'package:loan_app/view/constants/ConstantsClass.dart';

class GuideForLoan extends StatefulWidget {
  const GuideForLoan({Key? key}) : super(key: key);

  @override
  State<GuideForLoan> createState() => _GuideForLoanState();
}

class _GuideForLoanState extends State<GuideForLoan> {
  @override
  Widget build(BuildContext context) {
    var mHeight = MediaQuery.of(context).size.height;
    var mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar("Guide For Loan", mWidth),
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
                    Get.offAllNamed("/HomeScreen");
                  }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                      "assets/image/apply.png", BoxFit.cover),
                  button(() {
                    Get.to(const ATMScreen());
                  }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                      "assets/image/atm.png", BoxFit.cover),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  button(() {
                    Get.to(const BankInformation());
                  }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                      "assets/image/bank.png", BoxFit.cover),
                  button(() {
                    Get.toNamed("/CalculatorScreen");
                  }, mHeight * 0.033, mHeight / 4.6, mWidth / 2.4,
                      "assets/image/calculator.png", BoxFit.cover),
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
