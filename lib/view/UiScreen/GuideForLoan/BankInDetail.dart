import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:loan_app/view/constants/ConstantsClass.dart';

class BankInDetail extends StatefulWidget {
  const BankInDetail({Key? key}) : super(key: key);

  @override
  State<BankInDetail> createState() => _BankInDetailState();
}

class _BankInDetailState extends State<BankInDetail> {
  var data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    var mHeight = MediaQuery.of(context).size.height;
    var mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar(data[0]["bank"], mWidth),
      body: backGround(
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: mHeight / 4.5,
                width: mWidth,
                color: Colors.white.withOpacity(0.5)),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: mHeight / 2.5,
                  width: mWidth,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: mHeight * 0.065, bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        data[0]["bank"],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: mWidth * 0.075,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 2,
                        ),
                      ),
                      text(
                          "*Please dial from registered mobile number in bank and you will receive an sms.",
                          Colors.blue,
                          mWidth * 0.04),
                    ],
                  ),
                ),
                Container(
                  height: mHeight * 0.15,
                  width: mWidth,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: const Offset(0, 5),
                          spreadRadius: 9,
                          blurRadius: 20)
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text("Bank Customer Care", Colors.black,
                              mWidth * 0.067),
                          text("   ${data[1]["care"]}", Colors.grey.shade600,
                              mWidth * 0.055)
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Clipboard.setData(ClipboardData(
                                  text: data[1]["care"].toString()))
                              .then(
                            (value) => Get.snackbar(
                              "Copy",
                              "Bank Number  ${data[1]["care"]}",
                              colorText: Colors.white,
                              barBlur: 25,
                              backgroundColor: const Color(0xFF2C6AB9),
                              margin: const EdgeInsets.only(bottom: 50),
                              animationDuration: const Duration(seconds: 2),
                              overlayBlur: 1,
                              snackPosition: SnackPosition.BOTTOM,
                              icon: Icon(
                                Icons.add_alert,
                                color: Colors.white.withOpacity(0.9),
                              ),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.call,
                          color: Colors.blue,
                          size: 60,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
                height: mHeight / 4.5,
                width: mWidth,
                color: Colors.white.withOpacity(0.5)),
          ],
        ),
      ),
    );
  }
}
