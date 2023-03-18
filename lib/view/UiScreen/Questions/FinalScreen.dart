import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app/view/constants/ConstantsClass.dart';

class FinalScreen extends StatefulWidget {
  const FinalScreen({Key? key}) : super(key: key);

  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  @override
  Widget build(BuildContext context) {
    var mHeight = MediaQuery.of(context).size.height;
    var mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar("Loan Steps", mWidth),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            "assets/image/congras.png",
            fit: BoxFit.cover,
            width: mWidth,
          ),
          InkWell(
            onTap: () {
              Get.offAllNamed("/HomeScreen");
            },
            child: Container(
              height: mHeight * 0.077,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(
                  horizontal: 10, vertical: mHeight * 0.12),
              decoration: BoxDecoration(
                color: buttonClr,
                borderRadius: BorderRadius.circular(35),
              ),
              child: text("Submit", Colors.white, mWidth * 0.085),
            ),
          ),
          Container(
            height: mHeight * 0.11,
            width: mWidth,
            color: Colors.white.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
