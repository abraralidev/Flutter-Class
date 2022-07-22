// ignore_for_file: deprecated_member_use
import 'package:bmical/Data/calculator_brain.dart';
import 'package:bmical/Data/constant.dart';
import 'package:bmical/Pages/result_page.dart';
import 'package:bmical/Widgets/Reusedcard.dart';
import 'package:bmical/Widgets/buttom_button.dart';
import 'package:bmical/Widgets/customfloatingbutton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Widgets/card_data.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender {
  male,
  female,
}

class _InputPageState extends State<InputPage> {
  late Gender selectedGender;
  int height = 100;
  int weight = 20;
  int age = 10;
  Color maleCardColor = kInActiveCardcolor;
  Color femaleCardColor = kInActiveCardcolor;
  void updatecolor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColor == kInActiveCardcolor) {
        maleCardColor = KActiveCardcolor;
        femaleCardColor = kInActiveCardcolor;
      } else {
        maleCardColor = kInActiveCardcolor;
      }
    }
// this statement is used for female card color Active

    if (selectedGender == Gender.female) {
      if (femaleCardColor == kInActiveCardcolor) {
        femaleCardColor = KActiveCardcolor;
        maleCardColor = kInActiveCardcolor;
      } else {
        femaleCardColor = kInActiveCardcolor;
      }
    }
  }

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
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusedCard(
                    // colour: selectedGender == Gender.male
                    // ? ActiveCardcolor
                    // : InActiveCardcolor,
                    cardchild: card_data(
                      text: 'MALE',
                      icons: FontAwesomeIcons.mars,
                    ),
                    // colour: Colors.black38,
                    colour: maleCardColor,
                    onPress: () {
                      setState(() {
                        updatecolor(Gender.male);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusedCard(
                    // colour: selectedGender == Gender.female
                    // ? ActiveCardcolor
                    // : InActiveCardcolor,
                    cardchild: card_data(
                        text: 'FEMALE', icons: FontAwesomeIcons.venus),
                    colour: femaleCardColor,
                    // colour: Colors.black38,

                    onPress: () {
                      setState(() {
                        updatecolor(Gender.female);
                      });
                    },
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusedCard(
                colour: KActiveCardcolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: kLabelTextstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(), style: kNumberTextstyle),
                        Text(
                          "cm",
                          style: kLabelTextstyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: kSliderInactive,
                        thumbColor: Color(0xffeb1555),
                        activeTrackColor: Colors.white,
                        overlayColor: Color(0x29eb1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                        min: 100,
                        max: 220,
                      ),
                    )
                  ],
                ),
                onPress: () {},
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusedCard(
                    colour: KActiveCardcolor,
                    cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WEIGHT",
                            style: kLabelTextstyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextstyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Action_button(
                                  onpress: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  icon: Icons.remove),
                              SizedBox(
                                width: 10,
                              ),
                              Action_button(
                                  onpress: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  icon: Icons.add),
                            ],
                          )
                        ]),
                    onPress: () {},
                  ),
                ),
                Expanded(
                  child: ReusedCard(
                    colour: KActiveCardcolor,
                    cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE",
                            style: kLabelTextstyle,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberTextstyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Action_button(
                                  onpress: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  icon: Icons.remove),
                              SizedBox(
                                width: 10,
                              ),
                              Action_button(
                                  onpress: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  icon: Icons.add),
                            ],
                          )
                        ]),
                    onPress: () {},
                  ),
                ),
              ],
            )),

            // onPressed: () {
            //   // Navigator.push(context,
            //   //     MaterialPageRoute(builder: (Context) => Result_page()));

            // },
            Buttom_Button(
              buttontext: 'Calculate',
              onpress: () {
                // ignore: unused_local_variable
                CalculatorBrain calc = CalculatorBrain(height, weight);
                print(height);
                print(weight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Result_Page(
                            bmiResult: calc.calculateBMI(),
                            resultText: calc.getResult(),
                            interpretation: calc.getinterpretation())));
              },
            ),
          ],
        ));
  }
}
