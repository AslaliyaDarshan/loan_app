import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app/view/constants/ConstantsClass.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var mHeight = MediaQuery.of(context).size.height;
    var mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: splashBG,
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
                Get.offNamed("/GuidanceScreen");
              },
              child: Container(
                height: mHeight * 0.077,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFF2A7ADA),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: text("Start", Colors.white, mWidth * 0.085),
              ),
            )
          ],
        ),
      ),
    );
  }
}
