import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app/view/UiScreen/GuideScreen.dart';
import 'package:loan_app/view/constants/ConstantsClass.dart';
import 'package:page_transition/page_transition.dart';

class GuidanceScreen extends StatefulWidget {
  const GuidanceScreen({Key? key}) : super(key: key);

  @override
  State<GuidanceScreen> createState() => _GuidanceScreenState();
}

class _GuidanceScreenState extends State<GuidanceScreen> {
  @override
  Widget build(BuildContext context) {
    var mHeight = MediaQuery.of(context).size.height;
    var mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: SizedBox(
        height: mHeight * 0.08,
        width: mHeight * 0.08,
        child: FloatingActionButton(
          elevation: 10,
          onPressed: () {
            Navigator.push(
              context,
              PageTransition(
                  duration: const Duration(milliseconds: 900),
                  type: PageTransitionType.rotate,
                  alignment: Alignment.bottomRight,
                  childCurrent: const GuidanceScreen(),
                  child: const GuideScreen(),
                  inheritTheme: true,
                  ctx: context),
            );
          },
          child: const Icon(
            Icons.navigate_next_outlined,
            size: 45,
          ),
        ),
      ),
      body: backGround(
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: mHeight * 0.18,
              width: mWidth,
              color: Colors.white.withOpacity(0.7),
            ),
            Image.asset(
              "assets/image/guidance.png",
              fit: BoxFit.cover,
              height: mHeight / 2.3,
              width: mWidth,
            ),
            height(mHeight * 0.07),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text("Get Guidance", Colors.white, mWidth * 0.12),
                  text(
                    "We don't charge for any \nirrelevant fee, making \nyou loan at ease",
                    Colors.white.withOpacity(0.8),
                    mWidth * 0.07,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
