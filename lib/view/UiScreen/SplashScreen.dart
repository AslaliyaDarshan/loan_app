import 'package:flutter/material.dart';
import 'package:loan_app/view/UiScreen/GuidanceScreen.dart';
import 'package:loan_app/view/constants/ConstantsClass.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mHeight = MediaQuery.of(context).size.height;
    var mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: mHeight,
        width: mWidth,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/splash.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            height(mHeight * 0.25),
            Lottie.asset(
              "assets/lottie/BLockchain.json",
              fit: BoxFit.cover,
              height: mHeight * 0.4,
              width: mHeight * 0.4,
            ),
            height(mHeight * 0.2),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    duration: const Duration(milliseconds: 1700),
                    alignment: Alignment.center,
                    childCurrent: const SplashScreen(),
                    child: const GuidanceScreen(),
                  ),
                );
              },
              child: Container(
                height: mHeight * 0.077,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: buttonClr,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: text("Start", Colors.white, mWidth * 0.085),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
