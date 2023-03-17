import 'dart:math';

import 'package:flutter/material.dart';
import 'package:loan_app/view/constants/ConstantsClass.dart';

class SIPCalculator extends StatefulWidget {
  const SIPCalculator({Key? key}) : super(key: key);

  @override
  _SIPCalculatorState createState() => _SIPCalculatorState();
}

class _SIPCalculatorState extends State<SIPCalculator> {
  double p = 0, n = 0, r = 0, amount = 0, i = 0;
  int finalAmount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("SIP Calculator", MediaQuery.of(context).size.width),
      resizeToAvoidBottomInset: false,
      body: backGround(
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "SIP Calculator",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "patrick",
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              inputPrincipalTf(),
              const SizedBox(height: 30),
              inputMonthTf(),
              const SizedBox(height: 30),
              inputRateTf(),
              calculateButton(),
              Container(
                child: (amount == 0)
                    ? const Text(
                        "Oops! no return",
                        style: TextStyle(
                          fontFamily: "patrick",
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      )
                    : Text(
                        "Rs $finalAmount ",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Colors.white,
                        ),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }

  int calculate() {
    i = r / 100 / 12;
    print("princial = $p \n Rate = $r \n month = $n \n I= $i");

    setState(() {
      amount = ((p * (pow((i + 1), n) - 1)) / i) * (i + 1);
      finalAmount = amount.round();
    });
    return 0;
  }

  calculateButton() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      height: 110,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          print("Calculate button pressed");
          calculate();
        },
        child: const Text(
          "CALCULATE",
          style: TextStyle(
            fontFamily: "patrick",
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }

  inputRateTf() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: const Text(
            "Expected rate :",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "patrick",
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          decoration: kBoxDecorationStyle,
          height: 40,
          child: TextField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              border: InputBorder.none,
              // contentPadding: EdgeInsets.only(top: 14),
              hintText: "Enter the expected ROI!",
              hintStyle: kHintTextStyle,
            ),
            onChanged: (String s) {
              r = double.parse(s);
            },
          ),
        ),
      ],
    );
  }

  inputMonthTf() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: const Text(
            "Total duration :",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "patrick",
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          decoration: kBoxDecorationStyle,
          height: 40,
          child: TextField(
            keyboardType: TextInputType.number,
            style: const TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "Enter the months!",
              hintStyle: kHintTextStyle,
            ),
            onChanged: (String s) {
              n = double.parse(s);
            },
          ),
        ),
      ],
    );
  }

  inputPrincipalTf() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: const Text(
            "Principal deposit:",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "patrick",
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          // padding: EdgeInsets.only(bottom: 10, left: 5),
          decoration: kBoxDecorationStyle,
          height: 40,
          child: TextField(
            keyboardType: TextInputType.number,
            style: const TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "Enter the amount to be deposited!",
              hintStyle: kHintTextStyle,
            ),
            onChanged: (String s) {
              p = double.parse(s);
            },
          ),
        ),
      ],
    );
  }
}

const kHintTextStyle =
    TextStyle(color: Colors.white54, fontFamily: 'patrick', fontSize: 17);

const kLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'patrick',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Color(0xFF6CA8F1),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: const [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);
