import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app/controller/HomeController.dart';
import 'package:loan_app/view/UiScreen/GuideForLoan/BankInDetail.dart';
import 'package:loan_app/view/constants/ConstantsClass.dart';

class BankInformation extends StatefulWidget {
  const BankInformation({Key? key}) : super(key: key);

  @override
  State<BankInformation> createState() => _BankInformationState();
}

class _BankInformationState extends State<BankInformation> {
  HomeController cnt = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    var mHeight = MediaQuery.of(context).size.height;
    var mWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: appBar("Bank Information", mWidth),
      body: backGround(
        Column(
          children: [
            Container(
                height: mHeight / 4.5,
                width: mWidth,
                color: Colors.white.withOpacity(0.5)),
            Flexible(
              flex: 1,
              child: ListView.builder(
                itemCount: cnt.bank.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(const BankInDetail(), arguments: [
                        {"bank": cnt.bank[index]},
                        {"care": cnt.bankNumber[index]}
                      ]);
                    },
                    borderRadius: BorderRadius.circular(35),
                    child: Card(
                      elevation: 20,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 13),
                      color: Colors.transparent,
                      child: Container(
                        width: mWidth,
                        height: mHeight * 0.07,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: const Color(0xFF2C6AB9),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            text("${index + 1}", Colors.white, mWidth * 0.07),
                            text(cnt.bank[index], Colors.white, mWidth * 0.05),
                            const Icon(Icons.arrow_forward_ios,
                                color: Colors.white, size: 30),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
