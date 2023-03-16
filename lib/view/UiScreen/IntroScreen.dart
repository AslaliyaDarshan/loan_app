import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nice_intro/intro_screen.dart';
import 'package:nice_intro/intro_screens.dart';
import 'package:page_transition/page_transition.dart';

import 'StartScreen.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    var mHeight = MediaQuery.of(context).size.height;
    var mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: IntroScreens(
        footerBgColor: const Color(0xFF2A7ADA),
        physics: const BouncingScrollPhysics(),
        indicatorType: IndicatorType.DIAMOND,
        footerRadius: 20,
        doneWidget: SizedBox(
          height: mHeight * 0.07,
          width: mHeight * 0.07,
          child: FloatingActionButton(
            elevation: 10,
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                    duration: const Duration(milliseconds: 1500),
                    type: PageTransitionType.rotate,
                    alignment: Alignment.center,
                    childCurrent: const Intro(),
                    child: const StartScreen(),
                    inheritTheme: true,
                    ctx: context),
              );
              // Navigator.push(
              //   context,
              //   PageTransition(
              //     type: PageTransitionType.fade,
              //     duration: const Duration(milliseconds: 1500),
              //     alignment: Alignment.center,
              //     childCurrent: const Intro(),
              //     child: const StartScreen(),
              //   ),
              // );
            },
            child: const Icon(
              Icons.navigate_next_outlined,
              size: 45,
            ),
          ),
        ),
        slides: [
          IntroScreen(
            title: "Quick Loan",
            imageAsset: "assets/image/intro.png",
            description:
                "you can now apply for loans from the \ncomfort of your homes with instant\napprovals.",
          ),
          IntroScreen(
              title: "Easy Check",
              imageAsset: "assets/image/intro1.png",
              description:
                  "Check your loan status and transactions \nanywhere, anytime."),
          IntroScreen(
              title: "Super Secure",
              imageAsset: "assets/image/intro2.png",
              description:
                  "Your financial details and transactions are\nencrypted and secure with us.")
        ],
        onDone: () {
          Get.offNamed("/StartScreen");
        },
      ),
    );
  }
}
