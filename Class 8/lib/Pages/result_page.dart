import 'package:bmical/Data/constant.dart';
import 'package:bmical/Widgets/Reusedcard.dart';
import 'package:bmical/Widgets/buttom_button.dart';
import 'package:flutter/material.dart';

class Result_Page extends StatelessWidget {
  const Result_Page(
      {Key? key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation})
      : super(key: key);
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultPageTextStyle,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusedCard(
                  colour: KActiveCardcolor,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText.toUpperCase(),
                        style: kResulttextStyle,
                      ),
                      Text(
                        bmiResult,
                        style: kBMITextstyle,
                      ),
                      Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: kbodyTextstyle,
                      )
                    ],
                  ),
                  onPress: () {})),
          // FlatButton(
          //     onPressed: () {},
          // child:
          Buttom_Button(
            buttontext: 'Re-Calculate',
            onpress: () {
              Navigator.pop(context);
            },
            // )
          )
        ],
      ),
    );
  }
}




// ignore: unused_element

  // final String bmiResult;
  // final String resultText;
  // final String interpretation;


