import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loan_app/view/UiScreen/HomeScreen.dart';
import 'package:loan_app/view/constants/ConstantsClass.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  bool star = false;
  @override
  Widget build(BuildContext context) {
    var mHeight = MediaQuery.of(context).size.height;
    var mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: backGround(
        Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: button(() {}, mHeight * 0.04, mHeight / 3, mWidth,
                      "assets/image/start.png", BoxFit.fill),
                ),
                button(() {
                  Navigator.push(
                    context,
                    PageTransition(
                      duration: const Duration(milliseconds: 1500),
                      type: PageTransitionType.size,
                      alignment: Alignment.topCenter,
                      childCurrent: const StartScreen(),
                      child: const HomeScreen(),
                    ),
                  );
                }, mHeight * 0.06, mHeight / 5, mWidth / 2.5,
                    "assets/image/start1.png", BoxFit.scaleDown),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    button(() {
                      setState(() {
                        star = true;
                      });
                      Timer(
                        const Duration(seconds: 7),
                        () => setState(() {
                          star = false;
                        }),
                      );
                    }, mHeight * 0.033, mHeight / 5, mWidth / 2.5,
                        "assets/image/rateUs.png", BoxFit.cover),
                    button(() {}, mHeight * 0.033, mHeight / 5, mWidth / 2.5,
                        "assets/image/share.png", BoxFit.contain),
                  ],
                ),
                height(mHeight * 0.015),
                Container(
                  height: mHeight * 0.11,
                  width: mWidth,
                  color: Colors.white.withOpacity(0.7),
                ),
              ],
            ),
            star == true
                ? Lottie.asset("assets/lottie/star.json")
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
