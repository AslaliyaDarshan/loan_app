import 'package:flutter/material.dart';
import 'package:loan_app/view/constants/ConstantsClass.dart';

class GstCalculator extends StatefulWidget {
  const GstCalculator({Key? key}) : super(key: key);

  @override
  State<GstCalculator> createState() => _GstCalculatorState();
}

class _GstCalculatorState extends State<GstCalculator> {
  double billAmount = 0;

  double gstPercentage = 0;

  @override
  Widget build(BuildContext context) {
    var mediaqry = MediaQuery.of(context);
    var scheight = mediaqry.size.height;
    var scwidth = mediaqry.size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBar("GST Calculator", MediaQuery.of(context).size.width),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                    decoration:
                        const InputDecoration(labelText: "Bill amount(\$)"),
                    keyboardType: TextInputType.number,
                    onChanged: (String value) {
                      try {
                        billAmount = double.parse(value.toString());
                      } catch (exception) {
                        billAmount = 0.0;
                      }
                    }),
                TextField(
                    decoration: const InputDecoration(
                        labelText: "GST %", hintText: "15"),
                    keyboardType: TextInputType.number,
                    onChanged: (String value) {
                      try {
                        gstPercentage = double.parse(value.toString());
                      } catch (exception) {
                        gstPercentage = 0.0;
                      }
                    }),
                SizedBox(
                  height: scheight * 0.2,
                ),
                ElevatedButton(
                    onPressed: () {
                      double calculatedGst = billAmount * gstPercentage / 100.0;
                      double total = billAmount + calculatedGst;

                      AlertDialog dialog = AlertDialog(
                          content: Text("GST Rs: $calculatedGst \n"
                              "Total Rs.: $total"));

                      showDialog(
                          builder: (context) => dialog, context: context);
                    },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0xFF253598),
                      ),
                    ),
                    child: const Text("Calculate")),
                SizedBox(
                  height: scheight * 0.1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
