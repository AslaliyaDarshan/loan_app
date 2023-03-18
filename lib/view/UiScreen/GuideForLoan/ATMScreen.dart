import 'package:flutter/material.dart';
import 'package:loan_app/view/constants/ConstantsClass.dart';
import 'package:lottie/lottie.dart';

class ATMScreen extends StatefulWidget {
  const ATMScreen({Key? key}) : super(key: key);

  @override
  State<ATMScreen> createState() => _ATMScreenState();
}

class _ATMScreenState extends State<ATMScreen> {
  @override
  Widget build(BuildContext context) {
    var mHeight = MediaQuery.of(context).size.height;
    var mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar("ATM Machine Guide", mWidth),
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
              Lottie.asset("assets/lottie/atm.json",
                  fit: BoxFit.contain, height: mHeight * 0.5),
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
