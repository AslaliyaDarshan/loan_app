import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app/view/UiScreen/Questions/FinalScreen.dart';
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
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: mHeight * 0.03),
                  height: mHeight / 4.5,
                  width: mWidth,
                  color: Colors.white.withOpacity(0.5)),
              Stepper(
                physics: const BouncingScrollPhysics(),
                currentStep: index,
                onStepCancel: () {
                  if (index > 0) {
                    setState(() {
                      index--;
                    });
                  }
                },
                onStepContinue: () {
                  if (index <= 4) {
                    setState(() {
                      index++;
                    });
                  } else {
                    Get.to(const FinalScreen());
                  }
                },
                onStepTapped: (int index) {
                  setState(() {
                    index = index;
                  });
                },
                steps: [
                  Step(
                    title: text("Do you have Aadhaar Card?", Colors.white,
                        mWidth * 0.05),
                    content: confirm(mWidth),
                  ),
                  Step(
                    title: text(
                        "Do you have Pan Card?", Colors.white, mWidth * 0.05),
                    content: confirm(mWidth),
                  ),
                  Step(
                    title: text("Do you have Credit Card?", Colors.white,
                        mWidth * 0.05),
                    content: confirm(mWidth),
                  ),
                  Step(
                    title: text("Do you have Driving License?", Colors.white,
                        mWidth * 0.05),
                    content: confirm(mWidth),
                  ),
                  Step(
                    title: text(
                        "Do you have Passport?", Colors.white, mWidth * 0.05),
                    content: confirm(mWidth),
                  ),
                  Step(
                    title: text("Do you have Ration Card?", Colors.white,
                        mWidth * 0.05),
                    content: confirm(mWidth),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: mHeight * 0.03),
                  height: mHeight / 4.5,
                  width: mWidth,
                  color: Colors.white.withOpacity(0.5)),
            ],
          ),
        ),
      ),
    );
  }

  confirm(double pDblWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: () {
            if (index <= 4) {
              setState(() {
                index++;
              });
            } else {
              Get.snackbar(
                "congratulations",
                "congratulations Successfully verify your documents...",
                colorText: Colors.white,
                barBlur: 25,
                backgroundColor: const Color(0xFF2C6AB9),
                margin: const EdgeInsets.only(bottom: 50),
                animationDuration: const Duration(seconds: 2),
                overlayBlur: 15,
                snackPosition: SnackPosition.BOTTOM,
                icon: Icon(
                  Icons.add_alert,
                  color: Colors.white.withOpacity(0.9),
                ),
              );
            }
          },
          child: text("YES", Colors.white, pDblWidth * 0.05),
        ),
        width(pDblWidth * 0.09),
        ElevatedButton(
            onPressed: () {
              Get.snackbar(
                "Alert",
                "Please press yes and go next...",
                colorText: Colors.white,
                barBlur: 25,
                backgroundColor: const Color(0xFF2C6AB9),
                margin: const EdgeInsets.only(bottom: 50),
                animationDuration: const Duration(seconds: 2),
                overlayBlur: 15,
                snackPosition: SnackPosition.BOTTOM,
                icon: Icon(
                  Icons.add_alert,
                  color: Colors.white.withOpacity(0.9),
                ),
              );
            },
            child: text("No", Colors.white, pDblWidth * 0.05))
      ],
    );
  }
}
