import 'package:flutter/material.dart';
import 'package:loan_app/view/constants/ConstantsClass.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var mHeight = MediaQuery.of(context).size.height;
    var mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: backGround(
        Stepper(
          physics: const BouncingScrollPhysics(),
          currentStep: index,
          onStepCancel: () {
            if (index > 0) {
              setState(() {
                index -= 1;
              });
            }
          },
          onStepContinue: () {
            if (index <= 0) {
              setState(() {
                index += 1;
              });
            }
          },
          onStepTapped: (int index) {
            setState(() {
              index = index;
            });
          },
          steps: <Step>[
            Step(
              title: text(
                  "Do you have Aadhaar Card?", Colors.white, mWidth * 0.05),
              content: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text('Content for Step 1')),
            ),
            Step(
              title: text("Do you have Pan Card?", Colors.white, mWidth * 0.05),
              content: const Text('Content for Step 2'),
            ),
            Step(
              title:
                  text("Do you have Credit Card?", Colors.white, mWidth * 0.05),
              content: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text('Content for Step 1')),
            ),
            Step(
              title: text("Do you have ATM Card?", Colors.white, mWidth * 0.05),
              content: const Text('Content for Step 2'),
            ),
          ],
        ),
      ),
    );
  }
}
