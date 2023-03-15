import 'package:flutter/material.dart';

Color splashBG = const Color(0xFFFFFBF3);

Widget height(double height) {
  return SizedBox(
    height: height,
  );
}

Widget width(double width) {
  return SizedBox(
    width: width,
  );
}

text(String pStrText, Color pClrColor, double pDblFontSize) {
  return Text(
    pStrText,
    style: TextStyle(
      color: pClrColor,
      fontSize: pDblFontSize,
      fontWeight: FontWeight.w700,
      fontFamily: "patrick",
      letterSpacing: 2,
      fontStyle: FontStyle.italic,
    ),
  );
}

backGround(double pHeight, double pWidth, Widget child) {
  return Container(
    height: pHeight,
    width: pWidth,
    padding: EdgeInsets.symmetric(horizontal: 10),
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/image/splash.png"),
        fit: BoxFit.cover,
      ),
    ),
    child: child,
  );
}
