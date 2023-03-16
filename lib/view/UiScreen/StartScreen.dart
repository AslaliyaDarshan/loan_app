import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:loan_app/view/UiScreen/HomeScreen.dart';
import 'package:loan_app/view/constants/ConstantsClass.dart';
import 'package:page_transition/page_transition.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    var mHeight = MediaQuery.of(context).size.height;
    var mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: backGround(
        Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
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
                  print("rating");
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
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
      ),
    );
  }

  button(void Function() onTap, double pDblTopPadding, double pDblHeight,
      double pDblWidth, String pStrUrl, BoxFit pBoxFit) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        margin: EdgeInsets.only(top: pDblTopPadding),
        height: pDblHeight,
        width: pDblWidth,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: const Color(0xFF62A2F5),
            width: 5,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 7,
              blurRadius: 30,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(pStrUrl, fit: pBoxFit),
        ),
      ),
    );
  }
}
