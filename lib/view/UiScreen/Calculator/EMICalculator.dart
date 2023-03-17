/*
import "dart:async";
import "dart:math";

import "package:feature_discovery/feature_discovery.dart";
import "package:flutter/material.dart";

class EMICalculator extends StatefulWidget {
  const EMICalculator({super.key});

  @override
  EMICalculatorState createState() => EMICalculatorState();
}

class EMICalculatorState extends State<EMICalculator> {
  final List _tenureTypes = ['Month(s)', 'Year(s)'];
  String _tenureType = "Year(s)";
  String _emiResult = "";

  final TextEditingController _principalAmount = TextEditingController();
  final TextEditingController _interestRate = TextEditingController();
  final TextEditingController _tenure = TextEditingController();

  bool _switchValue = true;
  bool oncheck = false;
  bool isloading = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      FeatureDiscovery.discoverFeatures(context, <String>[
        'feature1',
      ]);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mediaqry = MediaQuery.of(context);
    var scheight = mediaqry.size.height;
    var scwidth = mediaqry.size.width;
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _principalAmount,
                  decoration: const InputDecoration(
                      labelText: "Enter Principal Amount"),
                  keyboardType: TextInputType.number,
                )),
            Container(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _interestRate,
                  decoration: const InputDecoration(labelText: "Interest Rate"),
                  keyboardType: TextInputType.number,
                )),
            Container(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: <Widget>[
                    Flexible(
                        flex: 4,
                        fit: FlexFit.tight,
                        child: TextField(
                          controller: _tenure,
                          decoration:
                              const InputDecoration(labelText: "Tenure"),
                          keyboardType: TextInputType.number,
                        )),
                    Flexible(
                        flex: 1,
                        child: Column(children: [
                          Text(_tenureType,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          Switch(
                              value: _switchValue,
                              onChanged: (bool value) {
                                print(value);

                                if (value) {
                                  _tenureType = _tenureTypes[1];
                                } else {
                                  _tenureType = _tenureTypes[0];
                                }

                                setState(() {
                                  _switchValue = value;
                                });
                              })
                        ]))
                  ],
                )),
            InkWell(
              onTap: () {
                setState(() {
                  isloading = true;
                });
                // interVideoAds();
                Timer(const Duration(seconds: 5), () {
                  setState(() {
                    isloading = false;
                  });
                  setState(() {
                    oncheck = true;
                  });
                  _handleCalculation();
                });
              },
              child: Container(
                height: scheight * 0.06,
                width: scwidth * 0.6,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: const Center(
                    child: Text(
                  "Check now",
                  style: TextStyle(
                      color: Colors.white, fontSize: 25, fontFamily: "OMEGLE"),
                )),
              ),
            ),
            emiResultsWidget(_emiResult),
            SizedBox(
              height: scheight * 0.03,
            ),
            oncheck == true
                ? InkWell(
                    onTap: () {},
                    child: Container(
                      height: scheight * 0.1,
                      width: scwidth * 0.8,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      child: DescribedFeatureOverlay(
                        featureId: "feature1",
                        title: const Text("Next"),
                        description: const Text(
                            "A loan is a form of debt incurred by an individual or other entity. The lender—usually a corporation, financial institution, or government—advances a sum of money to the borrower."),
                        backgroundColor: Colors.blue.withOpacity(0.5),
                        targetColor: Colors.white,
                        textColor: Colors.white,
                        overflowMode: OverflowMode.extendBackground,
                        contentLocation: ContentLocation.trivial,
                        pulseDuration: const Duration(seconds: 1),
                        openDuration: const Duration(seconds: 1),
                        enablePulsingAnimation: true,
                        barrierDismissible: false,
                        onComplete: () async {
                          return true;
                        },
                        tapTarget: const Icon(Icons.double_arrow_outlined),
                        child: Center(
                          child: RichText(
                            text: const TextSpan(
                              text: 'Next',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontFamily: "OMEGLE"),
                              // ignore: prefer_const_literals_to_create_immutables
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }

  void _handleCalculation() {
    double A = 0.0;
    int P = int.parse(_principalAmount.text);
    double r = int.parse(_interestRate.text) / 12 / 100;
    int n = _tenureType == "Year(s)"
        ? int.parse(_tenure.text) * 12
        : int.parse(_tenure.text);

    A = (P * r * pow((1 + r), n) / (pow((1 + r), n) - 1));

    _emiResult = A.toStringAsFixed(2);

    setState(() {});
  }

  Widget emiResultsWidget(emiResult) {
    bool canShow = false;
    String emiResult0 = emiResult;

    if (emiResult0.isNotEmpty) {
      canShow = true;
    }
    return Container(
        margin: const EdgeInsets.only(top: 40.0),
        child: canShow
            ? Column(children: [
                const Text("Your Monthly EMI is",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                Text(emiResult0,
                    style: const TextStyle(
                        fontSize: 50.0, fontWeight: FontWeight.bold))
              ])
            : Container());
  }
}
*/
import "dart:math";

import "package:flutter/material.dart";
import "package:loan_app/view/constants/ConstantsClass.dart";

class EMICalculator extends StatefulWidget {
  const EMICalculator({super.key});

  @override
  EMICalculatorState createState() => EMICalculatorState();
}

class EMICalculatorState extends State<EMICalculator> {
  final List _tenureTypes = ['Month(s)', 'Year(s)'];
  String _tenureType = "Year(s)";
  String _emiResult = "";

  final TextEditingController _principalAmount = TextEditingController();
  final TextEditingController _interestRate = TextEditingController();
  final TextEditingController _tenure = TextEditingController();

  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar("EMI Calculator", MediaQuery.of(context).size.width),
        body: backGround(
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: <Widget>[
                inputform(
                    title: "Principal Amount",
                    controller: _principalAmount,
                    hinttext: "Enter Principal Amount"),
                inputform(
                    title: "Interest Rate",
                    controller: _interestRate,
                    hinttext: "Interest Rate"),
                inputform(
                    title: "Tenure", controller: _tenure, hinttext: "Tenure"),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        _tenureType,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 17),
                      ),
                      Switch(
                        value: _switchValue,
                        onChanged: (bool value) {
                          print(value);

                          if (value) {
                            _tenureType = _tenureTypes[1];
                          } else {
                            _tenureType = _tenureTypes[0];
                          }

                          setState(
                            () {
                              _switchValue = value;
                            },
                          );
                        },
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _handleCalculation;
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)),
                    child: text("EMI Count", Colors.white,
                        MediaQuery.of(context).size.width * 0.08),
                  ),
                ),
                emiResultsWidget(_emiResult)
              ],
            ),
          ),
        ));
  }

  void _handleCalculation() {
    double A = 0.0;
    int P = int.parse(_principalAmount.text);
    double r = int.parse(_interestRate.text) / 12 / 100;
    int n = _tenureType == "Year(s)"
        ? int.parse(_tenure.text) * 12
        : int.parse(_tenure.text);

    A = (P * r * pow((1 + r), n) / (pow((1 + r), n) - 1));

    _emiResult = A.toStringAsFixed(2);

    setState(() {});
  }

  Widget emiResultsWidget(emiResult) {
    bool canShow = false;
    String _emiResult = emiResult;

    if (_emiResult.length > 0) {
      canShow = true;
    }
    return Container(
        margin: EdgeInsets.only(top: 40.0),
        child: canShow
            ? Column(children: [
                const Text("Your Monthly EMI is",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                Container(
                    child: Text(_emiResult,
                        style: const TextStyle(
                            fontSize: 50.0, fontWeight: FontWeight.bold)))
              ])
            : Container());
  }

  Widget inputform(
      {String? title, TextEditingController? controller, String? hinttext}) {
    var mediaqry = MediaQuery.of(context);
    var scheight = mediaqry.size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            title!,
            style: const TextStyle(
                fontSize: 22, color: Colors.white, fontFamily: "patrick"),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: scheight * 0.06,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            keyboardType: TextInputType.number,
            controller: controller,
            decoration: InputDecoration(
                border: const OutlineInputBorder(borderSide: BorderSide.none),
                hintText: hinttext),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
