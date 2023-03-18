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
