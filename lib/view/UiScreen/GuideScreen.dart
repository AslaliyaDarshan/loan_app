import 'package:flutter/material.dart';
import 'package:loan_app/view/UiScreen/IntroScreen.dart';
import 'package:loan_app/view/constants/ConstantsClass.dart';
import 'package:page_transition/page_transition.dart';

class GuideScreen extends StatelessWidget {
  const GuideScreen({Key? key}) : super(key: key);

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
                  duration: const Duration(milliseconds: 1200),
                  type: PageTransitionType.rotate,
                  alignment: Alignment.bottomRight,
                  childCurrent: const GuideScreen(),
                  child: const Intro(),
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
          children: [
            height(mHeight * 0.04),
            Container(
              height: mHeight * 0.18,
              width: mWidth,
              color: Colors.white.withOpacity(0.7),
            ),
            Padding(
              padding: EdgeInsets.only(left: mWidth * 0.03),
              child: Image.asset(
                "assets/image/guide.png",
                fit: BoxFit.fill,
                height: mHeight / 2.2,
                width: mWidth,
              ),
            ),
            // height(mHeight * 0.04),
            text("Loan Guide", Colors.white, mWidth * 0.12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: text(
                "Getting information of a loan instant on your mobile and You will learning how to get a different type of loan.",
                Colors.white.withOpacity(0.8),
                mWidth * 0.05,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
