import 'package:flutter/material.dart';
import 'package:get/get.dart';

Color buttonClr = const Color(0xFF1670D7);

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

text(String pStrText, Color pClrColor, double pDblFontSize,
    {FontWeight? pFontWeight}) {
  return Text(
    pStrText,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: pClrColor,
      fontSize: pDblFontSize,
      fontWeight: pFontWeight ?? FontWeight.w700,
      fontFamily: "patrick",
      letterSpacing: 2,
      fontStyle: FontStyle.italic,
    ),
  );
}

appBar(String pStrText, double pDblFontSize) {
  return AppBar(
    leading: IconButton(
      splashRadius: 25,
      onPressed: () {
        Get.back();
      },
      icon: Icon(
        Icons.arrow_back,
        size: pDblFontSize * 0.085,
      ),
    ),
    backgroundColor: const Color(0xFF023574),
    title: Text(
      pStrText,
      style: TextStyle(
        color: Colors.white,
        fontSize: pDblFontSize * 0.07,
        fontWeight: FontWeight.w700,
        fontFamily: "patrick",
        letterSpacing: 2,
        fontStyle: FontStyle.italic,
      ),
    ),
  );
}

backGround(Widget child) {
  return Container(
    height: double.infinity,
    width: double.infinity,
    // padding: const EdgeInsets.symmetric(horizontal: 10),
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/image/splash.png"),
        fit: BoxFit.cover,
      ),
    ),
    child: child,
  );
}

loanDetailText(String pStrLoanType, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Column(
      children: [
        SelectableText(
          """Gone are those days, when the process of getting a $pStrLoanType loan was lengthy and tedious. This is the era of hassle-free quick $pStrLoanType loans. Nowadays, the processing of a $pStrLoanType loan application has become faster once the applicant submits all necessary documents. Here is a step-by-step guide to understand $pStrLoanType loan process in India.


Step 1 : Application of $pStrLoanType loan

The process of availing a $pStrLoanType loan begins with the application form. You can apply online for a $pStrLoanType loan with help of various bank’s websites which also provide self-help tools like a $pStrLoanType loan eligibility calculator and a $pStrLoanType loan EMI calculator online.
To complete the $pStrLoanType loan process, you need to submit certain documents that act like identity proof, address proof, income proof and so on. You also need to provide details of your financial assets and liabilities. Following are few essential documents, you need to submit in order to complete the application process,

=>  Age proof

=>  Address proof

=>  Income proof

Property documents, in case the property to be purchased is finalised
Employment details, including a summary stating the working nature of your employer.
Nowadays, banks provide door-step services to their customers, where their representative will come and personally collect all the documents required to get a $pStrLoanType loan.

Step 2 : Paying processing fees

$pStrLoanType loan processing fees are the mandatory charges you need to pay to the bank to process your application. Every bank has its guidelines regarding processing fees. The $pStrLoanType loan processing fee is a one-time non-refundable charge that borrowers are required to pay to the $pStrLoanType loan lenders.

Step 3 : Discussion with your bank

After paying the processing fees, the bank or loan lenders check the authenticity of documents shared. This process generally takes two to three days; however, if the documentation is done correctly, this part of the $pStrLoanType loan process gets over quickly. Later on, the bank asks the applicant for a face-to-face interaction to discuss further details of the $pStrLoanType loan.
The discussion is generally meant to confirm the repaying capabilities of the applicant. However, you can clear your doubts regarding the $pStrLoanType loan during a conversation with the bank. Banks help their customers at each stage of the $pStrLoanType loan application process.

Step 4 : Approval of a loan

Every bank thoroughly verifies all the documents submitted by the applicant before sanctioning the loan. The approval of your $pStrLoanType loan application is dependent on the bank as well as the documents you have submitted. If all works well, your $pStrLoanType loan gets approved, and you receive a confirmation letter stating the amount to be sanctioned by the bank.

Step 5 : Processing of confirmation letter

After receiving the confirmation letter, you need to submit its signed copy which acts as your acceptance to the offer provided by the bank. Then, the bank processes the documents of the property to be purchased. Many banks often send their representative to inspect the premises of the property to be bought.

Step 6 : Disbursement of the loan

Once the inspection of the property is done, you need to sign the agreement of the $pStrLoanType loan provided by the bank. After that, you receive the loan amount via disbursement mode opted from your end.



""",
          textAlign: TextAlign.start,
          style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: MediaQuery.of(context).size.width * 0.05),
        ),
      ],
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
